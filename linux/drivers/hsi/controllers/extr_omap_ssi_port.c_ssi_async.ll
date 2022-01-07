; ModuleID = '/home/carl/AnghaBench/linux/drivers/hsi/controllers/extr_omap_ssi_port.c_ssi_async.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hsi/controllers/extr_omap_ssi_port.c_ssi_async.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hsi_msg = type { i64, i32, i32, i32, i64, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.hsi_port = type { i32 }
%struct.omap_ssi_port = type { i32, i32, %struct.list_head*, %struct.TYPE_6__, %struct.list_head*, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i64 }
%struct.list_head = type { i32 }
%struct.TYPE_5__ = type { i64 }

@ENOSYS = common dso_local global i32 0, align 4
@HSI_STATUS_QUEUED = common dso_local global i32 0, align 4
@HSI_STATUS_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"msg status %d ttype %d ch %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hsi_msg*)* @ssi_async to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssi_async(%struct.hsi_msg* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hsi_msg*, align 8
  %4 = alloca %struct.hsi_port*, align 8
  %5 = alloca %struct.omap_ssi_port*, align 8
  %6 = alloca %struct.list_head*, align 8
  %7 = alloca i32, align 4
  store %struct.hsi_msg* %0, %struct.hsi_msg** %3, align 8
  %8 = load %struct.hsi_msg*, %struct.hsi_msg** %3, align 8
  %9 = getelementptr inbounds %struct.hsi_msg, %struct.hsi_msg* %8, i32 0, i32 6
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.hsi_port* @hsi_get_port(i32 %10)
  store %struct.hsi_port* %11, %struct.hsi_port** %4, align 8
  %12 = load %struct.hsi_port*, %struct.hsi_port** %4, align 8
  %13 = call %struct.omap_ssi_port* @hsi_port_drvdata(%struct.hsi_port* %12)
  store %struct.omap_ssi_port* %13, %struct.omap_ssi_port** %5, align 8
  store i32 0, i32* %7, align 4
  %14 = load %struct.hsi_msg*, %struct.hsi_msg** %3, align 8
  %15 = icmp ne %struct.hsi_msg* %14, null
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = call i32 @BUG_ON(i32 %17)
  %19 = load %struct.hsi_msg*, %struct.hsi_msg** %3, align 8
  %20 = getelementptr inbounds %struct.hsi_msg, %struct.hsi_msg* %19, i32 0, i32 5
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp sgt i32 %22, 1
  br i1 %23, label %24, label %27

24:                                               ; preds = %1
  %25 = load i32, i32* @ENOSYS, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %127

27:                                               ; preds = %1
  %28 = load %struct.hsi_msg*, %struct.hsi_msg** %3, align 8
  %29 = getelementptr inbounds %struct.hsi_msg, %struct.hsi_msg* %28, i32 0, i32 4
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load %struct.hsi_msg*, %struct.hsi_msg** %3, align 8
  %34 = call i32 @ssi_async_break(%struct.hsi_msg* %33)
  store i32 %34, i32* %2, align 4
  br label %127

35:                                               ; preds = %27
  %36 = load %struct.hsi_msg*, %struct.hsi_msg** %3, align 8
  %37 = getelementptr inbounds %struct.hsi_msg, %struct.hsi_msg* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %58

40:                                               ; preds = %35
  %41 = load %struct.hsi_msg*, %struct.hsi_msg** %3, align 8
  %42 = getelementptr inbounds %struct.hsi_msg, %struct.hsi_msg* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.omap_ssi_port*, %struct.omap_ssi_port** %5, align 8
  %45 = getelementptr inbounds %struct.omap_ssi_port, %struct.omap_ssi_port* %44, i32 0, i32 5
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp uge i64 %43, %47
  %49 = zext i1 %48 to i32
  %50 = call i32 @BUG_ON(i32 %49)
  %51 = load %struct.omap_ssi_port*, %struct.omap_ssi_port** %5, align 8
  %52 = getelementptr inbounds %struct.omap_ssi_port, %struct.omap_ssi_port* %51, i32 0, i32 4
  %53 = load %struct.list_head*, %struct.list_head** %52, align 8
  %54 = load %struct.hsi_msg*, %struct.hsi_msg** %3, align 8
  %55 = getelementptr inbounds %struct.hsi_msg, %struct.hsi_msg* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = getelementptr inbounds %struct.list_head, %struct.list_head* %53, i64 %56
  store %struct.list_head* %57, %struct.list_head** %6, align 8
  br label %76

58:                                               ; preds = %35
  %59 = load %struct.hsi_msg*, %struct.hsi_msg** %3, align 8
  %60 = getelementptr inbounds %struct.hsi_msg, %struct.hsi_msg* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.omap_ssi_port*, %struct.omap_ssi_port** %5, align 8
  %63 = getelementptr inbounds %struct.omap_ssi_port, %struct.omap_ssi_port* %62, i32 0, i32 3
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp uge i64 %61, %65
  %67 = zext i1 %66 to i32
  %68 = call i32 @BUG_ON(i32 %67)
  %69 = load %struct.omap_ssi_port*, %struct.omap_ssi_port** %5, align 8
  %70 = getelementptr inbounds %struct.omap_ssi_port, %struct.omap_ssi_port* %69, i32 0, i32 2
  %71 = load %struct.list_head*, %struct.list_head** %70, align 8
  %72 = load %struct.hsi_msg*, %struct.hsi_msg** %3, align 8
  %73 = getelementptr inbounds %struct.hsi_msg, %struct.hsi_msg* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = getelementptr inbounds %struct.list_head, %struct.list_head* %71, i64 %74
  store %struct.list_head* %75, %struct.list_head** %6, align 8
  br label %76

76:                                               ; preds = %58, %40
  %77 = load i32, i32* @HSI_STATUS_QUEUED, align 4
  %78 = load %struct.hsi_msg*, %struct.hsi_msg** %3, align 8
  %79 = getelementptr inbounds %struct.hsi_msg, %struct.hsi_msg* %78, i32 0, i32 2
  store i32 %77, i32* %79, align 4
  %80 = load %struct.omap_ssi_port*, %struct.omap_ssi_port** %5, align 8
  %81 = getelementptr inbounds %struct.omap_ssi_port, %struct.omap_ssi_port* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @pm_runtime_get_sync(i32 %82)
  %84 = load %struct.omap_ssi_port*, %struct.omap_ssi_port** %5, align 8
  %85 = getelementptr inbounds %struct.omap_ssi_port, %struct.omap_ssi_port* %84, i32 0, i32 1
  %86 = call i32 @spin_lock_bh(i32* %85)
  %87 = load %struct.hsi_msg*, %struct.hsi_msg** %3, align 8
  %88 = getelementptr inbounds %struct.hsi_msg, %struct.hsi_msg* %87, i32 0, i32 3
  %89 = load %struct.list_head*, %struct.list_head** %6, align 8
  %90 = call i32 @list_add_tail(i32* %88, %struct.list_head* %89)
  %91 = load %struct.list_head*, %struct.list_head** %6, align 8
  %92 = call i32 @ssi_start_transfer(%struct.list_head* %91)
  store i32 %92, i32* %7, align 4
  %93 = load i32, i32* %7, align 4
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %95, label %102

95:                                               ; preds = %76
  %96 = load %struct.hsi_msg*, %struct.hsi_msg** %3, align 8
  %97 = getelementptr inbounds %struct.hsi_msg, %struct.hsi_msg* %96, i32 0, i32 3
  %98 = call i32 @list_del(i32* %97)
  %99 = load i32, i32* @HSI_STATUS_ERROR, align 4
  %100 = load %struct.hsi_msg*, %struct.hsi_msg** %3, align 8
  %101 = getelementptr inbounds %struct.hsi_msg, %struct.hsi_msg* %100, i32 0, i32 2
  store i32 %99, i32* %101, align 4
  br label %102

102:                                              ; preds = %95, %76
  %103 = load %struct.omap_ssi_port*, %struct.omap_ssi_port** %5, align 8
  %104 = getelementptr inbounds %struct.omap_ssi_port, %struct.omap_ssi_port* %103, i32 0, i32 1
  %105 = call i32 @spin_unlock_bh(i32* %104)
  %106 = load %struct.omap_ssi_port*, %struct.omap_ssi_port** %5, align 8
  %107 = getelementptr inbounds %struct.omap_ssi_port, %struct.omap_ssi_port* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @pm_runtime_mark_last_busy(i32 %108)
  %110 = load %struct.omap_ssi_port*, %struct.omap_ssi_port** %5, align 8
  %111 = getelementptr inbounds %struct.omap_ssi_port, %struct.omap_ssi_port* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @pm_runtime_put_autosuspend(i32 %112)
  %114 = load %struct.hsi_port*, %struct.hsi_port** %4, align 8
  %115 = getelementptr inbounds %struct.hsi_port, %struct.hsi_port* %114, i32 0, i32 0
  %116 = load %struct.hsi_msg*, %struct.hsi_msg** %3, align 8
  %117 = getelementptr inbounds %struct.hsi_msg, %struct.hsi_msg* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.hsi_msg*, %struct.hsi_msg** %3, align 8
  %120 = getelementptr inbounds %struct.hsi_msg, %struct.hsi_msg* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.hsi_msg*, %struct.hsi_msg** %3, align 8
  %123 = getelementptr inbounds %struct.hsi_msg, %struct.hsi_msg* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = call i32 @dev_dbg(i32* %115, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %118, i32 %121, i64 %124)
  %126 = load i32, i32* %7, align 4
  store i32 %126, i32* %2, align 4
  br label %127

127:                                              ; preds = %102, %32, %24
  %128 = load i32, i32* %2, align 4
  ret i32 %128
}

declare dso_local %struct.hsi_port* @hsi_get_port(i32) #1

declare dso_local %struct.omap_ssi_port* @hsi_port_drvdata(%struct.hsi_port*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @ssi_async_break(%struct.hsi_msg*) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @list_add_tail(i32*, %struct.list_head*) #1

declare dso_local i32 @ssi_start_transfer(%struct.list_head*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @pm_runtime_mark_last_busy(i32) #1

declare dso_local i32 @pm_runtime_put_autosuspend(i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
