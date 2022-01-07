; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/gpio/extr_hw_factory.c_dal_hw_factory_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/gpio/extr_hw_factory.c_dal_hw_factory_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc_context = type { i32 }
%struct.hw_factory = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dal_hw_factory_destroy(%struct.dc_context* %0, %struct.hw_factory** %1) #0 {
  %3 = alloca %struct.dc_context*, align 8
  %4 = alloca %struct.hw_factory**, align 8
  store %struct.dc_context* %0, %struct.dc_context** %3, align 8
  store %struct.hw_factory** %1, %struct.hw_factory*** %4, align 8
  %5 = load %struct.hw_factory**, %struct.hw_factory*** %4, align 8
  %6 = icmp ne %struct.hw_factory** %5, null
  br i1 %6, label %7, label %11

7:                                                ; preds = %2
  %8 = load %struct.hw_factory**, %struct.hw_factory*** %4, align 8
  %9 = load %struct.hw_factory*, %struct.hw_factory** %8, align 8
  %10 = icmp ne %struct.hw_factory* %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %7, %2
  %12 = call i32 (...) @BREAK_TO_DEBUGGER()
  br label %18

13:                                               ; preds = %7
  %14 = load %struct.hw_factory**, %struct.hw_factory*** %4, align 8
  %15 = load %struct.hw_factory*, %struct.hw_factory** %14, align 8
  %16 = call i32 @kfree(%struct.hw_factory* %15)
  %17 = load %struct.hw_factory**, %struct.hw_factory*** %4, align 8
  store %struct.hw_factory* null, %struct.hw_factory** %17, align 8
  br label %18

18:                                               ; preds = %13, %11
  ret void
}

declare dso_local i32 @BREAK_TO_DEBUGGER(...) #1

declare dso_local i32 @kfree(%struct.hw_factory*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
