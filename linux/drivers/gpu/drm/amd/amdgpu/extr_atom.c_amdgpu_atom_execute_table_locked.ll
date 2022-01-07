; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_atom.c_amdgpu_atom_execute_table_locked.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_atom.c_amdgpu_atom_execute_table_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 (%struct.TYPE_4__*, i32*, i32)* }
%struct.TYPE_4__ = type { i32, i32, i32, i32*, i64, i32*, %struct.atom_context* }
%struct.atom_context = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@ATOM_CT_SIZE_PTR = common dso_local global i64 0, align 8
@ATOM_CT_WS_PTR = common dso_local global i64 0, align 8
@ATOM_CT_PS_PTR = common dso_local global i64 0, align 8
@ATOM_CT_PS_MASK = common dso_local global i32 0, align 4
@ATOM_CT_CODE_PTR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c">> execute %04X (len %d, WS %d, PS %d)\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@debug_depth = common dso_local global i32 0, align 4
@ATOM_OP_NAMES_CNT = common dso_local global i8 0, align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"%s @ 0x%04X\0A\00", align 1
@atom_op_names = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [15 x i8] c"[%d] @ 0x%04X\0A\00", align 1
@.str.3 = private unnamed_addr constant [63 x i8] c"atombios stuck executing %04X (len %d, WS %d, PS %d) @ 0x%04X\0A\00", align 1
@ATOM_OP_CNT = common dso_local global i8 0, align 1
@opcode_table = common dso_local global %struct.TYPE_5__* null, align 8
@ATOM_OP_EOT = common dso_local global i8 0, align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"<<\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atom_context*, i32, i32*)* @amdgpu_atom_execute_table_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amdgpu_atom_execute_table_locked(%struct.atom_context* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.atom_context*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8, align 1
  %14 = alloca %struct.TYPE_4__, align 8
  %15 = alloca i32, align 4
  store %struct.atom_context* %0, %struct.atom_context** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %16 = load %struct.atom_context*, %struct.atom_context** %5, align 8
  %17 = getelementptr inbounds %struct.atom_context, %struct.atom_context* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = add nsw i64 %18, 4
  %20 = load i32, i32* %6, align 4
  %21 = mul nsw i32 2, %20
  %22 = sext i32 %21 to i64
  %23 = add nsw i64 %19, %22
  %24 = call i32 @CU16(i64 %23)
  store i32 %24, i32* %8, align 4
  store i32 0, i32* %15, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %3
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %165

30:                                               ; preds = %3
  %31 = load i32, i32* %8, align 4
  %32 = sext i32 %31 to i64
  %33 = load i64, i64* @ATOM_CT_SIZE_PTR, align 8
  %34 = add nsw i64 %32, %33
  %35 = call i32 @CU16(i64 %34)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %8, align 4
  %37 = sext i32 %36 to i64
  %38 = load i64, i64* @ATOM_CT_WS_PTR, align 8
  %39 = add nsw i64 %37, %38
  %40 = call i32 @CU8(i64 %39)
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %8, align 4
  %42 = sext i32 %41 to i64
  %43 = load i64, i64* @ATOM_CT_PS_PTR, align 8
  %44 = add nsw i64 %42, %43
  %45 = call i32 @CU8(i64 %44)
  %46 = load i32, i32* @ATOM_CT_PS_MASK, align 4
  %47 = and i32 %45, %46
  store i32 %47, i32* %11, align 4
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* @ATOM_CT_CODE_PTR, align 4
  %50 = add nsw i32 %48, %49
  store i32 %50, i32* %12, align 4
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* %11, align 4
  %55 = call i32 (i8*, ...) @SDEBUG(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %51, i32 %52, i32 %53, i32 %54)
  %56 = load %struct.atom_context*, %struct.atom_context** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 6
  store %struct.atom_context* %56, %struct.atom_context** %57, align 8
  %58 = load i32, i32* %11, align 4
  %59 = sdiv i32 %58, 4
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  store i32 %59, i32* %60, align 8
  %61 = load i32, i32* %8, align 4
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  store i32 %61, i32* %62, align 4
  %63 = load i32*, i32** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 5
  store i32* %63, i32** %64, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 2
  store i32 0, i32* %65, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 4
  store i64 0, i64* %66, align 8
  %67 = load i32, i32* %10, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %30
  %70 = load i32, i32* %10, align 4
  %71 = load i32, i32* @GFP_KERNEL, align 4
  %72 = call i32* @kcalloc(i32 4, i32 %70, i32 %71)
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 3
  store i32* %72, i32** %73, align 8
  br label %76

74:                                               ; preds = %30
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 3
  store i32* null, i32** %75, align 8
  br label %76

76:                                               ; preds = %74, %69
  %77 = load i32, i32* @debug_depth, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* @debug_depth, align 4
  br label %79

79:                                               ; preds = %76, %151
  %80 = load i32, i32* %12, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %12, align 4
  %82 = sext i32 %80 to i64
  %83 = call i32 @CU8(i64 %82)
  %84 = trunc i32 %83 to i8
  store i8 %84, i8* %13, align 1
  %85 = load i8, i8* %13, align 1
  %86 = zext i8 %85 to i32
  %87 = load i8, i8* @ATOM_OP_NAMES_CNT, align 1
  %88 = zext i8 %87 to i32
  %89 = icmp slt i32 %86, %88
  br i1 %89, label %90, label %99

90:                                               ; preds = %79
  %91 = load i32*, i32** @atom_op_names, align 8
  %92 = load i8, i8* %13, align 1
  %93 = zext i8 %92 to i64
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* %12, align 4
  %97 = sub nsw i32 %96, 1
  %98 = call i32 (i8*, ...) @SDEBUG(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %95, i32 %97)
  br label %105

99:                                               ; preds = %79
  %100 = load i8, i8* %13, align 1
  %101 = zext i8 %100 to i32
  %102 = load i32, i32* %12, align 4
  %103 = sub nsw i32 %102, 1
  %104 = call i32 (i8*, ...) @SDEBUG(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %101, i32 %103)
  br label %105

105:                                              ; preds = %99, %90
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %119

109:                                              ; preds = %105
  %110 = load i32, i32* %8, align 4
  %111 = load i32, i32* %9, align 4
  %112 = load i32, i32* %10, align 4
  %113 = load i32, i32* %11, align 4
  %114 = load i32, i32* %12, align 4
  %115 = sub nsw i32 %114, 1
  %116 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.3, i64 0, i64 0), i32 %110, i32 %111, i32 %112, i32 %113, i32 %115)
  %117 = load i32, i32* @EINVAL, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %15, align 4
  br label %156

119:                                              ; preds = %105
  %120 = load i8, i8* %13, align 1
  %121 = zext i8 %120 to i32
  %122 = load i8, i8* @ATOM_OP_CNT, align 1
  %123 = zext i8 %122 to i32
  %124 = icmp slt i32 %121, %123
  br i1 %124, label %125, label %143

125:                                              ; preds = %119
  %126 = load i8, i8* %13, align 1
  %127 = zext i8 %126 to i32
  %128 = icmp sgt i32 %127, 0
  br i1 %128, label %129, label %143

129:                                              ; preds = %125
  %130 = load %struct.TYPE_5__*, %struct.TYPE_5__** @opcode_table, align 8
  %131 = load i8, i8* %13, align 1
  %132 = zext i8 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 1
  %135 = load i32 (%struct.TYPE_4__*, i32*, i32)*, i32 (%struct.TYPE_4__*, i32*, i32)** %134, align 8
  %136 = load %struct.TYPE_5__*, %struct.TYPE_5__** @opcode_table, align 8
  %137 = load i8, i8* %13, align 1
  %138 = zext i8 %137 to i64
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i64 %138
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = call i32 %135(%struct.TYPE_4__* %14, i32* %12, i32 %141)
  br label %144

143:                                              ; preds = %125, %119
  br label %152

144:                                              ; preds = %129
  %145 = load i8, i8* %13, align 1
  %146 = zext i8 %145 to i32
  %147 = load i8, i8* @ATOM_OP_EOT, align 1
  %148 = zext i8 %147 to i32
  %149 = icmp eq i32 %146, %148
  br i1 %149, label %150, label %151

150:                                              ; preds = %144
  br label %152

151:                                              ; preds = %144
  br label %79

152:                                              ; preds = %150, %143
  %153 = load i32, i32* @debug_depth, align 4
  %154 = add nsw i32 %153, -1
  store i32 %154, i32* @debug_depth, align 4
  %155 = call i32 (i8*, ...) @SDEBUG(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  br label %156

156:                                              ; preds = %152, %109
  %157 = load i32, i32* %10, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %163

159:                                              ; preds = %156
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 3
  %161 = load i32*, i32** %160, align 8
  %162 = call i32 @kfree(i32* %161)
  br label %163

163:                                              ; preds = %159, %156
  %164 = load i32, i32* %15, align 4
  store i32 %164, i32* %4, align 4
  br label %165

165:                                              ; preds = %163, %27
  %166 = load i32, i32* %4, align 4
  ret i32 %166
}

declare dso_local i32 @CU16(i64) #1

declare dso_local i32 @CU8(i64) #1

declare dso_local i32 @SDEBUG(i8*, ...) #1

declare dso_local i32* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @DRM_ERROR(i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
