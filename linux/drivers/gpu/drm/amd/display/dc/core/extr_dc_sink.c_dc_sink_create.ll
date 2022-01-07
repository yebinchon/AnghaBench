; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_sink.c_dc_sink_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_sink.c_dc_sink_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc_sink = type { i32 }
%struct.dc_sink_init_data = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dc_sink* @dc_sink_create(%struct.dc_sink_init_data* %0) #0 {
  %2 = alloca %struct.dc_sink*, align 8
  %3 = alloca %struct.dc_sink_init_data*, align 8
  %4 = alloca %struct.dc_sink*, align 8
  store %struct.dc_sink_init_data* %0, %struct.dc_sink_init_data** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.dc_sink* @kzalloc(i32 4, i32 %5)
  store %struct.dc_sink* %6, %struct.dc_sink** %4, align 8
  %7 = load %struct.dc_sink*, %struct.dc_sink** %4, align 8
  %8 = icmp eq %struct.dc_sink* null, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %24

10:                                               ; preds = %1
  %11 = load %struct.dc_sink*, %struct.dc_sink** %4, align 8
  %12 = load %struct.dc_sink_init_data*, %struct.dc_sink_init_data** %3, align 8
  %13 = call i32 @construct(%struct.dc_sink* %11, %struct.dc_sink_init_data* %12)
  %14 = icmp eq i32 0, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  br label %21

16:                                               ; preds = %10
  %17 = load %struct.dc_sink*, %struct.dc_sink** %4, align 8
  %18 = getelementptr inbounds %struct.dc_sink, %struct.dc_sink* %17, i32 0, i32 0
  %19 = call i32 @kref_init(i32* %18)
  %20 = load %struct.dc_sink*, %struct.dc_sink** %4, align 8
  store %struct.dc_sink* %20, %struct.dc_sink** %2, align 8
  br label %25

21:                                               ; preds = %15
  %22 = load %struct.dc_sink*, %struct.dc_sink** %4, align 8
  %23 = call i32 @kfree(%struct.dc_sink* %22)
  br label %24

24:                                               ; preds = %21, %9
  store %struct.dc_sink* null, %struct.dc_sink** %2, align 8
  br label %25

25:                                               ; preds = %24, %16
  %26 = load %struct.dc_sink*, %struct.dc_sink** %2, align 8
  ret %struct.dc_sink* %26
}

declare dso_local %struct.dc_sink* @kzalloc(i32, i32) #1

declare dso_local i32 @construct(%struct.dc_sink*, %struct.dc_sink_init_data*) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @kfree(%struct.dc_sink*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
