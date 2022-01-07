; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_xen-kbdfront.c_xenkbd_disconnect_backend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_xen-kbdfront.c_xenkbd_disconnect_backend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xenkbd_info = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xenkbd_info*)* @xenkbd_disconnect_backend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xenkbd_disconnect_backend(%struct.xenkbd_info* %0) #0 {
  %2 = alloca %struct.xenkbd_info*, align 8
  store %struct.xenkbd_info* %0, %struct.xenkbd_info** %2, align 8
  %3 = load %struct.xenkbd_info*, %struct.xenkbd_info** %2, align 8
  %4 = getelementptr inbounds %struct.xenkbd_info, %struct.xenkbd_info* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = icmp sge i32 %5, 0
  br i1 %6, label %7, label %13

7:                                                ; preds = %1
  %8 = load %struct.xenkbd_info*, %struct.xenkbd_info** %2, align 8
  %9 = getelementptr inbounds %struct.xenkbd_info, %struct.xenkbd_info* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.xenkbd_info*, %struct.xenkbd_info** %2, align 8
  %12 = call i32 @unbind_from_irqhandler(i32 %10, %struct.xenkbd_info* %11)
  br label %13

13:                                               ; preds = %7, %1
  %14 = load %struct.xenkbd_info*, %struct.xenkbd_info** %2, align 8
  %15 = getelementptr inbounds %struct.xenkbd_info, %struct.xenkbd_info* %14, i32 0, i32 0
  store i32 -1, i32* %15, align 4
  %16 = load %struct.xenkbd_info*, %struct.xenkbd_info** %2, align 8
  %17 = getelementptr inbounds %struct.xenkbd_info, %struct.xenkbd_info* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = icmp sge i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %13
  %21 = load %struct.xenkbd_info*, %struct.xenkbd_info** %2, align 8
  %22 = getelementptr inbounds %struct.xenkbd_info, %struct.xenkbd_info* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @gnttab_end_foreign_access(i32 %23, i32 0, i64 0)
  br label %25

25:                                               ; preds = %20, %13
  %26 = load %struct.xenkbd_info*, %struct.xenkbd_info** %2, align 8
  %27 = getelementptr inbounds %struct.xenkbd_info, %struct.xenkbd_info* %26, i32 0, i32 1
  store i32 -1, i32* %27, align 4
  ret void
}

declare dso_local i32 @unbind_from_irqhandler(i32, %struct.xenkbd_info*) #1

declare dso_local i32 @gnttab_end_foreign_access(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
