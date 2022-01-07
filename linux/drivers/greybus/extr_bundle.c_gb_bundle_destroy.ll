; ModuleID = '/home/carl/AnghaBench/linux/drivers/greybus/extr_bundle.c_gb_bundle_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/greybus/extr_bundle.c_gb_bundle_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_bundle = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gb_bundle_destroy(%struct.gb_bundle* %0) #0 {
  %2 = alloca %struct.gb_bundle*, align 8
  store %struct.gb_bundle* %0, %struct.gb_bundle** %2, align 8
  %3 = load %struct.gb_bundle*, %struct.gb_bundle** %2, align 8
  %4 = call i32 @trace_gb_bundle_destroy(%struct.gb_bundle* %3)
  %5 = load %struct.gb_bundle*, %struct.gb_bundle** %2, align 8
  %6 = getelementptr inbounds %struct.gb_bundle, %struct.gb_bundle* %5, i32 0, i32 0
  %7 = call i64 @device_is_registered(i32* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = load %struct.gb_bundle*, %struct.gb_bundle** %2, align 8
  %11 = getelementptr inbounds %struct.gb_bundle, %struct.gb_bundle* %10, i32 0, i32 0
  %12 = call i32 @device_del(i32* %11)
  br label %13

13:                                               ; preds = %9, %1
  %14 = load %struct.gb_bundle*, %struct.gb_bundle** %2, align 8
  %15 = getelementptr inbounds %struct.gb_bundle, %struct.gb_bundle* %14, i32 0, i32 1
  %16 = call i32 @list_del(i32* %15)
  %17 = load %struct.gb_bundle*, %struct.gb_bundle** %2, align 8
  %18 = getelementptr inbounds %struct.gb_bundle, %struct.gb_bundle* %17, i32 0, i32 0
  %19 = call i32 @put_device(i32* %18)
  ret void
}

declare dso_local i32 @trace_gb_bundle_destroy(%struct.gb_bundle*) #1

declare dso_local i64 @device_is_registered(i32*) #1

declare dso_local i32 @device_del(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @put_device(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
