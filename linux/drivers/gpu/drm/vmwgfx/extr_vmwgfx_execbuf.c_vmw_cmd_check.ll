; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_execbuf.c_vmw_cmd_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_execbuf.c_vmw_cmd_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmw_cmd_entry = type { i32 (%struct.vmw_private*, %struct.vmw_sw_context*, %struct.TYPE_3__*)*, i64, i64, i32 }
%struct.vmw_private = type { i32 }
%struct.vmw_sw_context = type { i32 }
%struct.TYPE_3__ = type { i64, i64 }

@SVGA_CAP_GBOBJECTS = common dso_local global i32 0, align 4
@SVGA_CMD_MAX = common dso_local global i64 0, align 8
@SVGA_3D_CMD_BASE = common dso_local global i64 0, align 8
@SVGA_3D_CMD_MAX = common dso_local global i64 0, align 8
@vmw_cmd_entries = common dso_local global %struct.vmw_cmd_entry* null, align 8
@.str = private unnamed_addr constant [41 x i8] c"SVGA3D command: %d failed with error %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Invalid SVGA3D command: %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"Privileged SVGA3D command: %d\0A\00", align 1
@EPERM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [44 x i8] c"Deprecated (disallowed) SVGA3D command: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [53 x i8] c"SVGA3D command: %d not supported by virtual device.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vmw_private*, %struct.vmw_sw_context*, i8*, i64*)* @vmw_cmd_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmw_cmd_check(%struct.vmw_private* %0, %struct.vmw_sw_context* %1, i8* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.vmw_private*, align 8
  %7 = alloca %struct.vmw_sw_context*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_3__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.vmw_cmd_entry*, align 8
  %15 = alloca i32, align 4
  store %struct.vmw_private* %0, %struct.vmw_private** %6, align 8
  store %struct.vmw_sw_context* %1, %struct.vmw_sw_context** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64* %3, i64** %9, align 8
  %16 = load i64*, i64** %9, align 8
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %11, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = bitcast i8* %18 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %19, %struct.TYPE_3__** %12, align 8
  %20 = load %struct.vmw_private*, %struct.vmw_private** %6, align 8
  %21 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @SVGA_CAP_GBOBJECTS, align 4
  %24 = and i32 %22, %23
  store i32 %24, i32* %15, align 4
  %25 = load i8*, i8** %8, align 8
  %26 = bitcast i8* %25 to i64*
  %27 = getelementptr inbounds i64, i64* %26, i64 0
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %10, align 8
  %29 = load i64, i64* %10, align 8
  %30 = load i64, i64* @SVGA_CMD_MAX, align 8
  %31 = icmp slt i64 %29, %30
  %32 = zext i1 %31 to i32
  %33 = call i64 @unlikely(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %4
  %36 = load %struct.vmw_private*, %struct.vmw_private** %6, align 8
  %37 = load %struct.vmw_sw_context*, %struct.vmw_sw_context** %7, align 8
  %38 = load i8*, i8** %8, align 8
  %39 = load i64*, i64** %9, align 8
  %40 = call i32 @vmw_cmd_check_not_3d(%struct.vmw_private* %36, %struct.vmw_sw_context* %37, i8* %38, i64* %39)
  store i32 %40, i32* %5, align 4
  br label %179

41:                                               ; preds = %4
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  store i64 %44, i64* %10, align 8
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = add i64 %47, 16
  %49 = load i64*, i64** %9, align 8
  store i64 %48, i64* %49, align 8
  %50 = load i64, i64* @SVGA_3D_CMD_BASE, align 8
  %51 = load i64, i64* %10, align 8
  %52 = sub nsw i64 %51, %50
  store i64 %52, i64* %10, align 8
  %53 = load i64*, i64** %9, align 8
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* %11, align 8
  %56 = icmp sgt i64 %54, %55
  %57 = zext i1 %56 to i32
  %58 = call i64 @unlikely(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %41
  br label %151

61:                                               ; preds = %41
  %62 = load i64, i64* %10, align 8
  %63 = load i64, i64* @SVGA_3D_CMD_MAX, align 8
  %64 = load i64, i64* @SVGA_3D_CMD_BASE, align 8
  %65 = sub nsw i64 %63, %64
  %66 = icmp sge i64 %62, %65
  %67 = zext i1 %66 to i32
  %68 = call i64 @unlikely(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %61
  br label %151

71:                                               ; preds = %61
  %72 = load %struct.vmw_cmd_entry*, %struct.vmw_cmd_entry** @vmw_cmd_entries, align 8
  %73 = load i64, i64* %10, align 8
  %74 = getelementptr inbounds %struct.vmw_cmd_entry, %struct.vmw_cmd_entry* %72, i64 %73
  store %struct.vmw_cmd_entry* %74, %struct.vmw_cmd_entry** %14, align 8
  %75 = load %struct.vmw_cmd_entry*, %struct.vmw_cmd_entry** %14, align 8
  %76 = getelementptr inbounds %struct.vmw_cmd_entry, %struct.vmw_cmd_entry* %75, i32 0, i32 0
  %77 = load i32 (%struct.vmw_private*, %struct.vmw_sw_context*, %struct.TYPE_3__*)*, i32 (%struct.vmw_private*, %struct.vmw_sw_context*, %struct.TYPE_3__*)** %76, align 8
  %78 = icmp ne i32 (%struct.vmw_private*, %struct.vmw_sw_context*, %struct.TYPE_3__*)* %77, null
  %79 = xor i1 %78, true
  %80 = zext i1 %79 to i32
  %81 = call i64 @unlikely(i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %71
  br label %151

84:                                               ; preds = %71
  %85 = load %struct.vmw_cmd_entry*, %struct.vmw_cmd_entry** %14, align 8
  %86 = getelementptr inbounds %struct.vmw_cmd_entry, %struct.vmw_cmd_entry* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 8
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %95, label %89

89:                                               ; preds = %84
  %90 = load %struct.vmw_sw_context*, %struct.vmw_sw_context** %7, align 8
  %91 = getelementptr inbounds %struct.vmw_sw_context, %struct.vmw_sw_context* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = icmp ne i32 %92, 0
  %94 = xor i1 %93, true
  br label %95

95:                                               ; preds = %89, %84
  %96 = phi i1 [ false, %84 ], [ %94, %89 ]
  %97 = zext i1 %96 to i32
  %98 = call i64 @unlikely(i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %95
  br label %158

101:                                              ; preds = %95
  %102 = load %struct.vmw_cmd_entry*, %struct.vmw_cmd_entry** %14, align 8
  %103 = getelementptr inbounds %struct.vmw_cmd_entry, %struct.vmw_cmd_entry* %102, i32 0, i32 2
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %101
  %107 = load i32, i32* %15, align 4
  %108 = icmp ne i32 %107, 0
  br label %109

109:                                              ; preds = %106, %101
  %110 = phi i1 [ false, %101 ], [ %108, %106 ]
  %111 = zext i1 %110 to i32
  %112 = call i64 @unlikely(i32 %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %109
  br label %165

115:                                              ; preds = %109
  %116 = load %struct.vmw_cmd_entry*, %struct.vmw_cmd_entry** %14, align 8
  %117 = getelementptr inbounds %struct.vmw_cmd_entry, %struct.vmw_cmd_entry* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %115
  %121 = load i32, i32* %15, align 4
  %122 = icmp ne i32 %121, 0
  %123 = xor i1 %122, true
  br label %124

124:                                              ; preds = %120, %115
  %125 = phi i1 [ false, %115 ], [ %123, %120 ]
  %126 = zext i1 %125 to i32
  %127 = call i64 @unlikely(i32 %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %124
  br label %172

130:                                              ; preds = %124
  %131 = load %struct.vmw_cmd_entry*, %struct.vmw_cmd_entry** %14, align 8
  %132 = getelementptr inbounds %struct.vmw_cmd_entry, %struct.vmw_cmd_entry* %131, i32 0, i32 0
  %133 = load i32 (%struct.vmw_private*, %struct.vmw_sw_context*, %struct.TYPE_3__*)*, i32 (%struct.vmw_private*, %struct.vmw_sw_context*, %struct.TYPE_3__*)** %132, align 8
  %134 = load %struct.vmw_private*, %struct.vmw_private** %6, align 8
  %135 = load %struct.vmw_sw_context*, %struct.vmw_sw_context** %7, align 8
  %136 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %137 = call i32 %133(%struct.vmw_private* %134, %struct.vmw_sw_context* %135, %struct.TYPE_3__* %136)
  store i32 %137, i32* %13, align 4
  %138 = load i32, i32* %13, align 4
  %139 = icmp ne i32 %138, 0
  %140 = zext i1 %139 to i32
  %141 = call i64 @unlikely(i32 %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %150

143:                                              ; preds = %130
  %144 = load i64, i64* %10, align 8
  %145 = load i64, i64* @SVGA_3D_CMD_BASE, align 8
  %146 = add nsw i64 %144, %145
  %147 = load i32, i32* %13, align 4
  %148 = call i32 (i8*, i64, ...) @VMW_DEBUG_USER(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i64 %146, i32 %147)
  %149 = load i32, i32* %13, align 4
  store i32 %149, i32* %5, align 4
  br label %179

150:                                              ; preds = %130
  store i32 0, i32* %5, align 4
  br label %179

151:                                              ; preds = %83, %70, %60
  %152 = load i64, i64* %10, align 8
  %153 = load i64, i64* @SVGA_3D_CMD_BASE, align 8
  %154 = add nsw i64 %152, %153
  %155 = call i32 (i8*, i64, ...) @VMW_DEBUG_USER(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i64 %154)
  %156 = load i32, i32* @EINVAL, align 4
  %157 = sub nsw i32 0, %156
  store i32 %157, i32* %5, align 4
  br label %179

158:                                              ; preds = %100
  %159 = load i64, i64* %10, align 8
  %160 = load i64, i64* @SVGA_3D_CMD_BASE, align 8
  %161 = add nsw i64 %159, %160
  %162 = call i32 (i8*, i64, ...) @VMW_DEBUG_USER(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i64 %161)
  %163 = load i32, i32* @EPERM, align 4
  %164 = sub nsw i32 0, %163
  store i32 %164, i32* %5, align 4
  br label %179

165:                                              ; preds = %114
  %166 = load i64, i64* %10, align 8
  %167 = load i64, i64* @SVGA_3D_CMD_BASE, align 8
  %168 = add nsw i64 %166, %167
  %169 = call i32 (i8*, i64, ...) @VMW_DEBUG_USER(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i64 %168)
  %170 = load i32, i32* @EINVAL, align 4
  %171 = sub nsw i32 0, %170
  store i32 %171, i32* %5, align 4
  br label %179

172:                                              ; preds = %129
  %173 = load i64, i64* %10, align 8
  %174 = load i64, i64* @SVGA_3D_CMD_BASE, align 8
  %175 = add nsw i64 %173, %174
  %176 = call i32 (i8*, i64, ...) @VMW_DEBUG_USER(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.4, i64 0, i64 0), i64 %175)
  %177 = load i32, i32* @EINVAL, align 4
  %178 = sub nsw i32 0, %177
  store i32 %178, i32* %5, align 4
  br label %179

179:                                              ; preds = %172, %165, %158, %151, %150, %143, %35
  %180 = load i32, i32* %5, align 4
  ret i32 %180
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @vmw_cmd_check_not_3d(%struct.vmw_private*, %struct.vmw_sw_context*, i8*, i64*) #1

declare dso_local i32 @VMW_DEBUG_USER(i8*, i64, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
