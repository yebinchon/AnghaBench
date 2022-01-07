; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_opp.c_dce110_opp_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_opp.c_dce110_opp_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.output_pixel_processor = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dce110_opp_destroy(%struct.output_pixel_processor** %0) #0 {
  %2 = alloca %struct.output_pixel_processor**, align 8
  store %struct.output_pixel_processor** %0, %struct.output_pixel_processor*** %2, align 8
  %3 = load %struct.output_pixel_processor**, %struct.output_pixel_processor*** %2, align 8
  %4 = load %struct.output_pixel_processor*, %struct.output_pixel_processor** %3, align 8
  %5 = icmp ne %struct.output_pixel_processor* %4, null
  br i1 %5, label %6, label %11

6:                                                ; preds = %1
  %7 = load %struct.output_pixel_processor**, %struct.output_pixel_processor*** %2, align 8
  %8 = load %struct.output_pixel_processor*, %struct.output_pixel_processor** %7, align 8
  %9 = call i32 @FROM_DCE11_OPP(%struct.output_pixel_processor* %8)
  %10 = call i32 @kfree(i32 %9)
  br label %11

11:                                               ; preds = %6, %1
  %12 = load %struct.output_pixel_processor**, %struct.output_pixel_processor*** %2, align 8
  store %struct.output_pixel_processor* null, %struct.output_pixel_processor** %12, align 8
  ret void
}

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @FROM_DCE11_OPP(%struct.output_pixel_processor*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
