; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_nv50.c_nv50_gr_tp_trap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_nv50.c_nv50_gr_tp_trap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nv50_gr = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.nvkm_subdev }
%struct.nvkm_subdev = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"magic set %d:\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"\09%08x: %08x\0A\00", align 1
@nv50_tex_traps = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"%s - TP%d: %08x [%s]\0A\00", align 1
@nv50_mpc_traps = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"%s - TP%d: Unhandled ustatus %08x\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"%s - No TPs claiming errors?\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nv50_gr*, i32, i32, i32, i32, i8*)* @nv50_gr_tp_trap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv50_gr_tp_trap(%struct.nv50_gr* %0, i32 %1, i32 %2, i32 %3, i32 %4, i8* %5) #0 {
  %7 = alloca %struct.nv50_gr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca %struct.nvkm_subdev*, align 8
  %14 = alloca %struct.nvkm_device*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca [128 x i8], align 16
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.nv50_gr* %0, %struct.nv50_gr** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i8* %5, i8** %12, align 8
  %22 = load %struct.nv50_gr*, %struct.nv50_gr** %7, align 8
  %23 = getelementptr inbounds %struct.nv50_gr, %struct.nv50_gr* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  store %struct.nvkm_subdev* %25, %struct.nvkm_subdev** %13, align 8
  %26 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %13, align 8
  %27 = getelementptr inbounds %struct.nvkm_subdev, %struct.nvkm_subdev* %26, i32 0, i32 0
  %28 = load %struct.nvkm_device*, %struct.nvkm_device** %27, align 8
  store %struct.nvkm_device* %28, %struct.nvkm_device** %14, align 8
  %29 = load %struct.nvkm_device*, %struct.nvkm_device** %14, align 8
  %30 = call i32 @nvkm_rd32(%struct.nvkm_device* %29, i32 5440)
  store i32 %30, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  br label %31

31:                                               ; preds = %164, %6
  %32 = load i32, i32* %17, align 4
  %33 = icmp slt i32 %32, 16
  br i1 %33, label %34, label %167

34:                                               ; preds = %31
  %35 = load i32, i32* %15, align 4
  %36 = load i32, i32* %17, align 4
  %37 = shl i32 1, %36
  %38 = and i32 %35, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %34
  br label %164

41:                                               ; preds = %34
  %42 = load %struct.nvkm_device*, %struct.nvkm_device** %14, align 8
  %43 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp slt i32 %44, 160
  br i1 %45, label %46, label %51

46:                                               ; preds = %41
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* %17, align 4
  %49 = shl i32 %48, 12
  %50 = add nsw i32 %47, %49
  store i32 %50, i32* %20, align 4
  br label %56

51:                                               ; preds = %41
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* %17, align 4
  %54 = shl i32 %53, 11
  %55 = add nsw i32 %52, %54
  store i32 %55, i32* %20, align 4
  br label %56

56:                                               ; preds = %51, %46
  %57 = load %struct.nvkm_device*, %struct.nvkm_device** %14, align 8
  %58 = load i32, i32* %20, align 4
  %59 = call i32 @nvkm_rd32(%struct.nvkm_device* %57, i32 %58)
  %60 = and i32 %59, 2147483647
  store i32 %60, i32* %21, align 4
  %61 = load i32, i32* %21, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %56
  br label %164

64:                                               ; preds = %56
  %65 = load i32, i32* %16, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %16, align 4
  %67 = load i32, i32* %8, align 4
  switch i32 %67, label %147 [
    i32 6, label %68
    i32 7, label %108
    i32 8, label %137
  ]

68:                                               ; preds = %64
  %69 = load i32, i32* %11, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %107

71:                                               ; preds = %68
  %72 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %13, align 8
  %73 = load i32, i32* %17, align 4
  %74 = call i32 (%struct.nvkm_subdev*, i8*, ...) @nvkm_error(%struct.nvkm_subdev* %72, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %73)
  %75 = load i32, i32* %20, align 4
  %76 = add nsw i32 %75, 4
  store i32 %76, i32* %18, align 4
  br label %77

77:                                               ; preds = %89, %71
  %78 = load i32, i32* %18, align 4
  %79 = load i32, i32* %20, align 4
  %80 = add nsw i32 %79, 16
  %81 = icmp sle i32 %78, %80
  br i1 %81, label %82, label %92

82:                                               ; preds = %77
  %83 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %13, align 8
  %84 = load i32, i32* %18, align 4
  %85 = load %struct.nvkm_device*, %struct.nvkm_device** %14, align 8
  %86 = load i32, i32* %18, align 4
  %87 = call i32 @nvkm_rd32(%struct.nvkm_device* %85, i32 %86)
  %88 = call i32 (%struct.nvkm_subdev*, i8*, ...) @nvkm_error(%struct.nvkm_subdev* %83, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %84, i32 %87)
  br label %89

89:                                               ; preds = %82
  %90 = load i32, i32* %18, align 4
  %91 = add nsw i32 %90, 4
  store i32 %91, i32* %18, align 4
  br label %77

92:                                               ; preds = %77
  %93 = load i32, i32* %21, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %106

95:                                               ; preds = %92
  %96 = getelementptr inbounds [128 x i8], [128 x i8]* %19, i64 0, i64 0
  %97 = load i32, i32* @nv50_tex_traps, align 4
  %98 = load i32, i32* %21, align 4
  %99 = call i32 @nvkm_snprintbf(i8* %96, i32 128, i32 %97, i32 %98)
  %100 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %13, align 8
  %101 = load i8*, i8** %12, align 8
  %102 = load i32, i32* %17, align 4
  %103 = load i32, i32* %21, align 4
  %104 = getelementptr inbounds [128 x i8], [128 x i8]* %19, i64 0, i64 0
  %105 = call i32 (%struct.nvkm_subdev*, i8*, ...) @nvkm_error(%struct.nvkm_subdev* %100, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i8* %101, i32 %102, i32 %103, i8* %104)
  store i32 0, i32* %21, align 4
  br label %106

106:                                              ; preds = %95, %92
  br label %107

107:                                              ; preds = %106, %68
  br label %147

108:                                              ; preds = %64
  %109 = load i32, i32* %21, align 4
  %110 = and i32 %109, 67305472
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %119

112:                                              ; preds = %108
  %113 = load %struct.nv50_gr*, %struct.nv50_gr** %7, align 8
  %114 = load i32, i32* %17, align 4
  %115 = load i32, i32* %11, align 4
  %116 = call i32 @nv50_gr_mp_trap(%struct.nv50_gr* %113, i32 %114, i32 %115)
  %117 = load i32, i32* %21, align 4
  %118 = and i32 %117, -67305473
  store i32 %118, i32* %21, align 4
  br label %119

119:                                              ; preds = %112, %108
  %120 = load i32, i32* %21, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %136

122:                                              ; preds = %119
  %123 = load i32, i32* %11, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %136

125:                                              ; preds = %122
  %126 = getelementptr inbounds [128 x i8], [128 x i8]* %19, i64 0, i64 0
  %127 = load i32, i32* @nv50_mpc_traps, align 4
  %128 = load i32, i32* %21, align 4
  %129 = call i32 @nvkm_snprintbf(i8* %126, i32 128, i32 %127, i32 %128)
  %130 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %13, align 8
  %131 = load i8*, i8** %12, align 8
  %132 = load i32, i32* %17, align 4
  %133 = load i32, i32* %21, align 4
  %134 = getelementptr inbounds [128 x i8], [128 x i8]* %19, i64 0, i64 0
  %135 = call i32 (%struct.nvkm_subdev*, i8*, ...) @nvkm_error(%struct.nvkm_subdev* %130, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i8* %131, i32 %132, i32 %133, i8* %134)
  store i32 0, i32* %21, align 4
  br label %136

136:                                              ; preds = %125, %122, %119
  br label %147

137:                                              ; preds = %64
  %138 = load i32, i32* %11, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %146

140:                                              ; preds = %137
  %141 = load %struct.nv50_gr*, %struct.nv50_gr** %7, align 8
  %142 = load i32, i32* %20, align 4
  %143 = load i32, i32* %21, align 4
  %144 = load i32, i32* %17, align 4
  %145 = call i32 @nv50_gr_prop_trap(%struct.nv50_gr* %141, i32 %142, i32 %143, i32 %144)
  br label %146

146:                                              ; preds = %140, %137
  store i32 0, i32* %21, align 4
  br label %147

147:                                              ; preds = %64, %146, %136, %107
  %148 = load i32, i32* %21, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %160

150:                                              ; preds = %147
  %151 = load i32, i32* %11, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %159

153:                                              ; preds = %150
  %154 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %13, align 8
  %155 = load i8*, i8** %12, align 8
  %156 = load i32, i32* %17, align 4
  %157 = load i32, i32* %21, align 4
  %158 = call i32 (%struct.nvkm_subdev*, i8*, ...) @nvkm_error(%struct.nvkm_subdev* %154, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i8* %155, i32 %156, i32 %157)
  br label %159

159:                                              ; preds = %153, %150
  br label %160

160:                                              ; preds = %159, %147
  %161 = load %struct.nvkm_device*, %struct.nvkm_device** %14, align 8
  %162 = load i32, i32* %20, align 4
  %163 = call i32 @nvkm_wr32(%struct.nvkm_device* %161, i32 %162, i32 -1073741824)
  br label %164

164:                                              ; preds = %160, %63, %40
  %165 = load i32, i32* %17, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %17, align 4
  br label %31

167:                                              ; preds = %31
  %168 = load i32, i32* %16, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %177, label %170

170:                                              ; preds = %167
  %171 = load i32, i32* %11, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %177

173:                                              ; preds = %170
  %174 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %13, align 8
  %175 = load i8*, i8** %12, align 8
  %176 = call i32 @nvkm_warn(%struct.nvkm_subdev* %174, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i8* %175)
  br label %177

177:                                              ; preds = %173, %170, %167
  ret void
}

declare dso_local i32 @nvkm_rd32(%struct.nvkm_device*, i32) #1

declare dso_local i32 @nvkm_error(%struct.nvkm_subdev*, i8*, ...) #1

declare dso_local i32 @nvkm_snprintbf(i8*, i32, i32, i32) #1

declare dso_local i32 @nv50_gr_mp_trap(%struct.nv50_gr*, i32, i32) #1

declare dso_local i32 @nv50_gr_prop_trap(%struct.nv50_gr*, i32, i32, i32) #1

declare dso_local i32 @nvkm_wr32(%struct.nvkm_device*, i32, i32) #1

declare dso_local i32 @nvkm_warn(%struct.nvkm_subdev*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
