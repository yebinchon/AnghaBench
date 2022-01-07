; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_cmdbuf.c_vmw_cmdbuf_cur_lock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_cmdbuf.c_vmw_cmdbuf_cur_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmw_cmdbuf_man = type { i32 }

@ERESTARTSYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vmw_cmdbuf_man*, i32)* @vmw_cmdbuf_cur_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmw_cmdbuf_cur_lock(%struct.vmw_cmdbuf_man* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vmw_cmdbuf_man*, align 8
  %5 = alloca i32, align 4
  store %struct.vmw_cmdbuf_man* %0, %struct.vmw_cmdbuf_man** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %17

8:                                                ; preds = %2
  %9 = load %struct.vmw_cmdbuf_man*, %struct.vmw_cmdbuf_man** %4, align 8
  %10 = getelementptr inbounds %struct.vmw_cmdbuf_man, %struct.vmw_cmdbuf_man* %9, i32 0, i32 0
  %11 = call i64 @mutex_lock_interruptible(i32* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %8
  %14 = load i32, i32* @ERESTARTSYS, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %22

16:                                               ; preds = %8
  br label %21

17:                                               ; preds = %2
  %18 = load %struct.vmw_cmdbuf_man*, %struct.vmw_cmdbuf_man** %4, align 8
  %19 = getelementptr inbounds %struct.vmw_cmdbuf_man, %struct.vmw_cmdbuf_man* %18, i32 0, i32 0
  %20 = call i32 @mutex_lock(i32* %19)
  br label %21

21:                                               ; preds = %17, %16
  store i32 0, i32* %3, align 4
  br label %22

22:                                               ; preds = %21, %13
  %23 = load i32, i32* %3, align 4
  ret i32 %23
}

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
