; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_fifo.c_vmw_fifo_commit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_fifo.c_vmw_fifo_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmw_private = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vmw_fifo_commit(%struct.vmw_private* %0, i32 %1) #0 {
  %3 = alloca %struct.vmw_private*, align 8
  %4 = alloca i32, align 4
  store %struct.vmw_private* %0, %struct.vmw_private** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.vmw_private*, %struct.vmw_private** %3, align 8
  %6 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %2
  %10 = load %struct.vmw_private*, %struct.vmw_private** %3, align 8
  %11 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @vmw_cmdbuf_commit(i64 %12, i32 %13, i32* null, i32 0)
  br label %19

15:                                               ; preds = %2
  %16 = load %struct.vmw_private*, %struct.vmw_private** %3, align 8
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @vmw_local_fifo_commit(%struct.vmw_private* %16, i32 %17)
  br label %19

19:                                               ; preds = %15, %9
  ret void
}

declare dso_local i32 @vmw_cmdbuf_commit(i64, i32, i32*, i32) #1

declare dso_local i32 @vmw_local_fifo_commit(%struct.vmw_private*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
