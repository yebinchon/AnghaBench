; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/cec/extr_cec-core.c_cec_unregister_adapter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/cec/extr_cec-core.c_cec_unregister_adapter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cec_adapter = type { i64, i32, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cec_unregister_adapter(%struct.cec_adapter* %0) #0 {
  %2 = alloca %struct.cec_adapter*, align 8
  store %struct.cec_adapter* %0, %struct.cec_adapter** %2, align 8
  %3 = load %struct.cec_adapter*, %struct.cec_adapter** %2, align 8
  %4 = call i64 @IS_ERR_OR_NULL(%struct.cec_adapter* %3)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  br label %14

7:                                                ; preds = %1
  %8 = load %struct.cec_adapter*, %struct.cec_adapter** %2, align 8
  %9 = getelementptr inbounds %struct.cec_adapter, %struct.cec_adapter* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @debugfs_remove_recursive(i32 %10)
  %12 = load %struct.cec_adapter*, %struct.cec_adapter** %2, align 8
  %13 = call i32 @cec_devnode_unregister(%struct.cec_adapter* %12)
  br label %14

14:                                               ; preds = %7, %6
  ret void
}

declare dso_local i64 @IS_ERR_OR_NULL(%struct.cec_adapter*) #1

declare dso_local i32 @debugfs_remove_recursive(i32) #1

declare dso_local i32 @cec_devnode_unregister(%struct.cec_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
