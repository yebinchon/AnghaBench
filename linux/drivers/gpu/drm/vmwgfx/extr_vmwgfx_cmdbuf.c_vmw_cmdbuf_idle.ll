; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_cmdbuf.c_vmw_cmdbuf_idle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_cmdbuf.c_vmw_cmdbuf_idle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmw_cmdbuf_man = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }

@SVGA_IRQFLAG_COMMAND_BUFFER = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vmw_cmdbuf_idle(%struct.vmw_cmdbuf_man* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.vmw_cmdbuf_man*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.vmw_cmdbuf_man* %0, %struct.vmw_cmdbuf_man** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %8 = load %struct.vmw_cmdbuf_man*, %struct.vmw_cmdbuf_man** %4, align 8
  %9 = load i32, i32* %5, align 4
  %10 = call i32 @vmw_cmdbuf_cur_flush(%struct.vmw_cmdbuf_man* %8, i32 %9)
  store i32 %10, i32* %7, align 4
  %11 = load %struct.vmw_cmdbuf_man*, %struct.vmw_cmdbuf_man** %4, align 8
  %12 = getelementptr inbounds %struct.vmw_cmdbuf_man, %struct.vmw_cmdbuf_man* %11, i32 0, i32 0
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = load i32, i32* @SVGA_IRQFLAG_COMMAND_BUFFER, align 4
  %15 = load %struct.vmw_cmdbuf_man*, %struct.vmw_cmdbuf_man** %4, align 8
  %16 = getelementptr inbounds %struct.vmw_cmdbuf_man, %struct.vmw_cmdbuf_man* %15, i32 0, i32 0
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = call i32 @vmw_generic_waiter_add(%struct.TYPE_3__* %13, i32 %14, i32* %18)
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %3
  %23 = load %struct.vmw_cmdbuf_man*, %struct.vmw_cmdbuf_man** %4, align 8
  %24 = getelementptr inbounds %struct.vmw_cmdbuf_man, %struct.vmw_cmdbuf_man* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.vmw_cmdbuf_man*, %struct.vmw_cmdbuf_man** %4, align 8
  %27 = call i32 @vmw_cmdbuf_man_idle(%struct.vmw_cmdbuf_man* %26, i32 1)
  %28 = load i64, i64* %6, align 8
  %29 = call i32 @wait_event_interruptible_timeout(i32 %25, i32 %27, i64 %28)
  store i32 %29, i32* %7, align 4
  br label %38

30:                                               ; preds = %3
  %31 = load %struct.vmw_cmdbuf_man*, %struct.vmw_cmdbuf_man** %4, align 8
  %32 = getelementptr inbounds %struct.vmw_cmdbuf_man, %struct.vmw_cmdbuf_man* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.vmw_cmdbuf_man*, %struct.vmw_cmdbuf_man** %4, align 8
  %35 = call i32 @vmw_cmdbuf_man_idle(%struct.vmw_cmdbuf_man* %34, i32 1)
  %36 = load i64, i64* %6, align 8
  %37 = call i32 @wait_event_timeout(i32 %33, i32 %35, i64 %36)
  store i32 %37, i32* %7, align 4
  br label %38

38:                                               ; preds = %30, %22
  %39 = load %struct.vmw_cmdbuf_man*, %struct.vmw_cmdbuf_man** %4, align 8
  %40 = getelementptr inbounds %struct.vmw_cmdbuf_man, %struct.vmw_cmdbuf_man* %39, i32 0, i32 0
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = load i32, i32* @SVGA_IRQFLAG_COMMAND_BUFFER, align 4
  %43 = load %struct.vmw_cmdbuf_man*, %struct.vmw_cmdbuf_man** %4, align 8
  %44 = getelementptr inbounds %struct.vmw_cmdbuf_man, %struct.vmw_cmdbuf_man* %43, i32 0, i32 0
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = call i32 @vmw_generic_waiter_remove(%struct.TYPE_3__* %41, i32 %42, i32* %46)
  %48 = load i32, i32* %7, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %59

50:                                               ; preds = %38
  %51 = load %struct.vmw_cmdbuf_man*, %struct.vmw_cmdbuf_man** %4, align 8
  %52 = call i32 @vmw_cmdbuf_man_idle(%struct.vmw_cmdbuf_man* %51, i32 1)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %50
  %55 = load i32, i32* @EBUSY, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %7, align 4
  br label %58

57:                                               ; preds = %50
  store i32 0, i32* %7, align 4
  br label %58

58:                                               ; preds = %57, %54
  br label %59

59:                                               ; preds = %58, %38
  %60 = load i32, i32* %7, align 4
  %61 = icmp sgt i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %59
  store i32 0, i32* %7, align 4
  br label %63

63:                                               ; preds = %62, %59
  %64 = load i32, i32* %7, align 4
  ret i32 %64
}

declare dso_local i32 @vmw_cmdbuf_cur_flush(%struct.vmw_cmdbuf_man*, i32) #1

declare dso_local i32 @vmw_generic_waiter_add(%struct.TYPE_3__*, i32, i32*) #1

declare dso_local i32 @wait_event_interruptible_timeout(i32, i32, i64) #1

declare dso_local i32 @vmw_cmdbuf_man_idle(%struct.vmw_cmdbuf_man*, i32) #1

declare dso_local i32 @wait_event_timeout(i32, i32, i64) #1

declare dso_local i32 @vmw_generic_waiter_remove(%struct.TYPE_3__*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
