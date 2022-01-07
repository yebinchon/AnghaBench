; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/clk/extr_base.c_nvkm_cstate_prog.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/clk/extr_base.c_nvkm_cstate_prog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_clk = type { i32, %struct.TYPE_2__*, %struct.nvkm_subdev }
%struct.TYPE_2__ = type { i32 (%struct.nvkm_clk*, %struct.nvkm_cstate*)*, i32 (%struct.nvkm_clk*)*, i32 (%struct.nvkm_clk*)* }
%struct.nvkm_cstate = type { i32 }
%struct.nvkm_subdev = type { %struct.nvkm_device* }
%struct.nvkm_device = type { %struct.nvkm_volt*, %struct.nvkm_therm* }
%struct.nvkm_volt = type { i32 }
%struct.nvkm_therm = type { i32 }
%struct.nvkm_pstate = type { i32, %struct.nvkm_cstate, i32 }

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"failed to raise fan speed: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"failed to raise voltage: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"failed to lower voltage: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"failed to lower fan speed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_clk*, %struct.nvkm_pstate*, i32)* @nvkm_cstate_prog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvkm_cstate_prog(%struct.nvkm_clk* %0, %struct.nvkm_pstate* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvkm_clk*, align 8
  %6 = alloca %struct.nvkm_pstate*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.nvkm_subdev*, align 8
  %9 = alloca %struct.nvkm_device*, align 8
  %10 = alloca %struct.nvkm_therm*, align 8
  %11 = alloca %struct.nvkm_volt*, align 8
  %12 = alloca %struct.nvkm_cstate*, align 8
  %13 = alloca i32, align 4
  store %struct.nvkm_clk* %0, %struct.nvkm_clk** %5, align 8
  store %struct.nvkm_pstate* %1, %struct.nvkm_pstate** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load %struct.nvkm_clk*, %struct.nvkm_clk** %5, align 8
  %15 = getelementptr inbounds %struct.nvkm_clk, %struct.nvkm_clk* %14, i32 0, i32 2
  store %struct.nvkm_subdev* %15, %struct.nvkm_subdev** %8, align 8
  %16 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %8, align 8
  %17 = getelementptr inbounds %struct.nvkm_subdev, %struct.nvkm_subdev* %16, i32 0, i32 0
  %18 = load %struct.nvkm_device*, %struct.nvkm_device** %17, align 8
  store %struct.nvkm_device* %18, %struct.nvkm_device** %9, align 8
  %19 = load %struct.nvkm_device*, %struct.nvkm_device** %9, align 8
  %20 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %19, i32 0, i32 1
  %21 = load %struct.nvkm_therm*, %struct.nvkm_therm** %20, align 8
  store %struct.nvkm_therm* %21, %struct.nvkm_therm** %10, align 8
  %22 = load %struct.nvkm_device*, %struct.nvkm_device** %9, align 8
  %23 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %22, i32 0, i32 0
  %24 = load %struct.nvkm_volt*, %struct.nvkm_volt** %23, align 8
  store %struct.nvkm_volt* %24, %struct.nvkm_volt** %11, align 8
  %25 = load %struct.nvkm_pstate*, %struct.nvkm_pstate** %6, align 8
  %26 = getelementptr inbounds %struct.nvkm_pstate, %struct.nvkm_pstate* %25, i32 0, i32 2
  %27 = call i32 @list_empty(i32* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %38, label %29

29:                                               ; preds = %3
  %30 = load %struct.nvkm_clk*, %struct.nvkm_clk** %5, align 8
  %31 = load %struct.nvkm_pstate*, %struct.nvkm_pstate** %6, align 8
  %32 = load i32, i32* %7, align 4
  %33 = call %struct.nvkm_cstate* @nvkm_cstate_get(%struct.nvkm_clk* %30, %struct.nvkm_pstate* %31, i32 %32)
  store %struct.nvkm_cstate* %33, %struct.nvkm_cstate** %12, align 8
  %34 = load %struct.nvkm_clk*, %struct.nvkm_clk** %5, align 8
  %35 = load %struct.nvkm_pstate*, %struct.nvkm_pstate** %6, align 8
  %36 = load %struct.nvkm_cstate*, %struct.nvkm_cstate** %12, align 8
  %37 = call %struct.nvkm_cstate* @nvkm_cstate_find_best(%struct.nvkm_clk* %34, %struct.nvkm_pstate* %35, %struct.nvkm_cstate* %36)
  store %struct.nvkm_cstate* %37, %struct.nvkm_cstate** %12, align 8
  br label %41

38:                                               ; preds = %3
  %39 = load %struct.nvkm_pstate*, %struct.nvkm_pstate** %6, align 8
  %40 = getelementptr inbounds %struct.nvkm_pstate, %struct.nvkm_pstate* %39, i32 0, i32 1
  store %struct.nvkm_cstate* %40, %struct.nvkm_cstate** %12, align 8
  br label %41

41:                                               ; preds = %38, %29
  %42 = load %struct.nvkm_therm*, %struct.nvkm_therm** %10, align 8
  %43 = icmp ne %struct.nvkm_therm* %42, null
  br i1 %43, label %44, label %63

44:                                               ; preds = %41
  %45 = load %struct.nvkm_therm*, %struct.nvkm_therm** %10, align 8
  %46 = load %struct.nvkm_pstate*, %struct.nvkm_pstate** %6, align 8
  %47 = getelementptr inbounds %struct.nvkm_pstate, %struct.nvkm_pstate* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @nvkm_therm_cstate(%struct.nvkm_therm* %45, i32 %48, i32 1)
  store i32 %49, i32* %13, align 4
  %50 = load i32, i32* %13, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %62

52:                                               ; preds = %44
  %53 = load i32, i32* %13, align 4
  %54 = load i32, i32* @ENODEV, align 4
  %55 = sub nsw i32 0, %54
  %56 = icmp ne i32 %53, %55
  br i1 %56, label %57, label %62

57:                                               ; preds = %52
  %58 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %8, align 8
  %59 = load i32, i32* %13, align 4
  %60 = call i32 @nvkm_error(%struct.nvkm_subdev* %58, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %59)
  %61 = load i32, i32* %13, align 4
  store i32 %61, i32* %4, align 4
  br label %169

62:                                               ; preds = %52, %44
  br label %63

63:                                               ; preds = %62, %41
  %64 = load %struct.nvkm_volt*, %struct.nvkm_volt** %11, align 8
  %65 = icmp ne %struct.nvkm_volt* %64, null
  br i1 %65, label %66, label %92

66:                                               ; preds = %63
  %67 = load %struct.nvkm_volt*, %struct.nvkm_volt** %11, align 8
  %68 = load %struct.nvkm_cstate*, %struct.nvkm_cstate** %12, align 8
  %69 = getelementptr inbounds %struct.nvkm_cstate, %struct.nvkm_cstate* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.nvkm_pstate*, %struct.nvkm_pstate** %6, align 8
  %72 = getelementptr inbounds %struct.nvkm_pstate, %struct.nvkm_pstate* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.nvkm_cstate, %struct.nvkm_cstate* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.nvkm_clk*, %struct.nvkm_clk** %5, align 8
  %76 = getelementptr inbounds %struct.nvkm_clk, %struct.nvkm_clk* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @nvkm_volt_set_id(%struct.nvkm_volt* %67, i32 %70, i32 %74, i32 %77, i32 1)
  store i32 %78, i32* %13, align 4
  %79 = load i32, i32* %13, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %91

81:                                               ; preds = %66
  %82 = load i32, i32* %13, align 4
  %83 = load i32, i32* @ENODEV, align 4
  %84 = sub nsw i32 0, %83
  %85 = icmp ne i32 %82, %84
  br i1 %85, label %86, label %91

86:                                               ; preds = %81
  %87 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %8, align 8
  %88 = load i32, i32* %13, align 4
  %89 = call i32 @nvkm_error(%struct.nvkm_subdev* %87, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %88)
  %90 = load i32, i32* %13, align 4
  store i32 %90, i32* %4, align 4
  br label %169

91:                                               ; preds = %81, %66
  br label %92

92:                                               ; preds = %91, %63
  %93 = load %struct.nvkm_clk*, %struct.nvkm_clk** %5, align 8
  %94 = getelementptr inbounds %struct.nvkm_clk, %struct.nvkm_clk* %93, i32 0, i32 1
  %95 = load %struct.TYPE_2__*, %struct.TYPE_2__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 0
  %97 = load i32 (%struct.nvkm_clk*, %struct.nvkm_cstate*)*, i32 (%struct.nvkm_clk*, %struct.nvkm_cstate*)** %96, align 8
  %98 = load %struct.nvkm_clk*, %struct.nvkm_clk** %5, align 8
  %99 = load %struct.nvkm_cstate*, %struct.nvkm_cstate** %12, align 8
  %100 = call i32 %97(%struct.nvkm_clk* %98, %struct.nvkm_cstate* %99)
  store i32 %100, i32* %13, align 4
  %101 = load i32, i32* %13, align 4
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %118

103:                                              ; preds = %92
  %104 = load %struct.nvkm_clk*, %struct.nvkm_clk** %5, align 8
  %105 = getelementptr inbounds %struct.nvkm_clk, %struct.nvkm_clk* %104, i32 0, i32 1
  %106 = load %struct.TYPE_2__*, %struct.TYPE_2__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 1
  %108 = load i32 (%struct.nvkm_clk*)*, i32 (%struct.nvkm_clk*)** %107, align 8
  %109 = load %struct.nvkm_clk*, %struct.nvkm_clk** %5, align 8
  %110 = call i32 %108(%struct.nvkm_clk* %109)
  store i32 %110, i32* %13, align 4
  %111 = load %struct.nvkm_clk*, %struct.nvkm_clk** %5, align 8
  %112 = getelementptr inbounds %struct.nvkm_clk, %struct.nvkm_clk* %111, i32 0, i32 1
  %113 = load %struct.TYPE_2__*, %struct.TYPE_2__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 2
  %115 = load i32 (%struct.nvkm_clk*)*, i32 (%struct.nvkm_clk*)** %114, align 8
  %116 = load %struct.nvkm_clk*, %struct.nvkm_clk** %5, align 8
  %117 = call i32 %115(%struct.nvkm_clk* %116)
  br label %118

118:                                              ; preds = %103, %92
  %119 = load %struct.nvkm_volt*, %struct.nvkm_volt** %11, align 8
  %120 = icmp ne %struct.nvkm_volt* %119, null
  br i1 %120, label %121, label %146

121:                                              ; preds = %118
  %122 = load %struct.nvkm_volt*, %struct.nvkm_volt** %11, align 8
  %123 = load %struct.nvkm_cstate*, %struct.nvkm_cstate** %12, align 8
  %124 = getelementptr inbounds %struct.nvkm_cstate, %struct.nvkm_cstate* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.nvkm_pstate*, %struct.nvkm_pstate** %6, align 8
  %127 = getelementptr inbounds %struct.nvkm_pstate, %struct.nvkm_pstate* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.nvkm_cstate, %struct.nvkm_cstate* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.nvkm_clk*, %struct.nvkm_clk** %5, align 8
  %131 = getelementptr inbounds %struct.nvkm_clk, %struct.nvkm_clk* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = call i32 @nvkm_volt_set_id(%struct.nvkm_volt* %122, i32 %125, i32 %129, i32 %132, i32 -1)
  store i32 %133, i32* %13, align 4
  %134 = load i32, i32* %13, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %145

136:                                              ; preds = %121
  %137 = load i32, i32* %13, align 4
  %138 = load i32, i32* @ENODEV, align 4
  %139 = sub nsw i32 0, %138
  %140 = icmp ne i32 %137, %139
  br i1 %140, label %141, label %145

141:                                              ; preds = %136
  %142 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %8, align 8
  %143 = load i32, i32* %13, align 4
  %144 = call i32 @nvkm_error(%struct.nvkm_subdev* %142, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %143)
  br label %145

145:                                              ; preds = %141, %136, %121
  br label %146

146:                                              ; preds = %145, %118
  %147 = load %struct.nvkm_therm*, %struct.nvkm_therm** %10, align 8
  %148 = icmp ne %struct.nvkm_therm* %147, null
  br i1 %148, label %149, label %167

149:                                              ; preds = %146
  %150 = load %struct.nvkm_therm*, %struct.nvkm_therm** %10, align 8
  %151 = load %struct.nvkm_pstate*, %struct.nvkm_pstate** %6, align 8
  %152 = getelementptr inbounds %struct.nvkm_pstate, %struct.nvkm_pstate* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @nvkm_therm_cstate(%struct.nvkm_therm* %150, i32 %153, i32 -1)
  store i32 %154, i32* %13, align 4
  %155 = load i32, i32* %13, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %166

157:                                              ; preds = %149
  %158 = load i32, i32* %13, align 4
  %159 = load i32, i32* @ENODEV, align 4
  %160 = sub nsw i32 0, %159
  %161 = icmp ne i32 %158, %160
  br i1 %161, label %162, label %166

162:                                              ; preds = %157
  %163 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %8, align 8
  %164 = load i32, i32* %13, align 4
  %165 = call i32 @nvkm_error(%struct.nvkm_subdev* %163, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %164)
  br label %166

166:                                              ; preds = %162, %157, %149
  br label %167

167:                                              ; preds = %166, %146
  %168 = load i32, i32* %13, align 4
  store i32 %168, i32* %4, align 4
  br label %169

169:                                              ; preds = %167, %86, %57
  %170 = load i32, i32* %4, align 4
  ret i32 %170
}

declare dso_local i32 @list_empty(i32*) #1

declare dso_local %struct.nvkm_cstate* @nvkm_cstate_get(%struct.nvkm_clk*, %struct.nvkm_pstate*, i32) #1

declare dso_local %struct.nvkm_cstate* @nvkm_cstate_find_best(%struct.nvkm_clk*, %struct.nvkm_pstate*, %struct.nvkm_cstate*) #1

declare dso_local i32 @nvkm_therm_cstate(%struct.nvkm_therm*, i32, i32) #1

declare dso_local i32 @nvkm_error(%struct.nvkm_subdev*, i8*, i32) #1

declare dso_local i32 @nvkm_volt_set_id(%struct.nvkm_volt*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
