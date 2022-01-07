; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_cmd.c_hns_roce_cmd_use_events.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_cmd.c_hns_roce_cmd_use_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_roce_dev = type { %struct.hns_roce_cmdq }
%struct.hns_roce_cmdq = type { i32, i32, i32, i32, i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CMD_TOKEN_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hns_roce_cmd_use_events(%struct.hns_roce_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hns_roce_dev*, align 8
  %4 = alloca %struct.hns_roce_cmdq*, align 8
  %5 = alloca i32, align 4
  store %struct.hns_roce_dev* %0, %struct.hns_roce_dev** %3, align 8
  %6 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %7 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %6, i32 0, i32 0
  store %struct.hns_roce_cmdq* %7, %struct.hns_roce_cmdq** %4, align 8
  %8 = load %struct.hns_roce_cmdq*, %struct.hns_roce_cmdq** %4, align 8
  %9 = getelementptr inbounds %struct.hns_roce_cmdq, %struct.hns_roce_cmdq* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.TYPE_2__* @kmalloc_array(i32 %10, i32 8, i32 %11)
  %13 = load %struct.hns_roce_cmdq*, %struct.hns_roce_cmdq** %4, align 8
  %14 = getelementptr inbounds %struct.hns_roce_cmdq, %struct.hns_roce_cmdq* %13, i32 0, i32 6
  store %struct.TYPE_2__* %12, %struct.TYPE_2__** %14, align 8
  %15 = load %struct.hns_roce_cmdq*, %struct.hns_roce_cmdq** %4, align 8
  %16 = getelementptr inbounds %struct.hns_roce_cmdq, %struct.hns_roce_cmdq* %15, i32 0, i32 6
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = icmp ne %struct.TYPE_2__* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %77

22:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %23

23:                                               ; preds = %47, %22
  %24 = load i32, i32* %5, align 4
  %25 = load %struct.hns_roce_cmdq*, %struct.hns_roce_cmdq** %4, align 8
  %26 = getelementptr inbounds %struct.hns_roce_cmdq, %struct.hns_roce_cmdq* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %50

29:                                               ; preds = %23
  %30 = load i32, i32* %5, align 4
  %31 = load %struct.hns_roce_cmdq*, %struct.hns_roce_cmdq** %4, align 8
  %32 = getelementptr inbounds %struct.hns_roce_cmdq, %struct.hns_roce_cmdq* %31, i32 0, i32 6
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = load i32, i32* %5, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  store i32 %30, i32* %37, align 4
  %38 = load i32, i32* %5, align 4
  %39 = add nsw i32 %38, 1
  %40 = load %struct.hns_roce_cmdq*, %struct.hns_roce_cmdq** %4, align 8
  %41 = getelementptr inbounds %struct.hns_roce_cmdq, %struct.hns_roce_cmdq* %40, i32 0, i32 6
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = load i32, i32* %5, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  store i32 %39, i32* %46, align 4
  br label %47

47:                                               ; preds = %29
  %48 = load i32, i32* %5, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %5, align 4
  br label %23

50:                                               ; preds = %23
  %51 = load %struct.hns_roce_cmdq*, %struct.hns_roce_cmdq** %4, align 8
  %52 = getelementptr inbounds %struct.hns_roce_cmdq, %struct.hns_roce_cmdq* %51, i32 0, i32 6
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = load %struct.hns_roce_cmdq*, %struct.hns_roce_cmdq** %4, align 8
  %55 = getelementptr inbounds %struct.hns_roce_cmdq, %struct.hns_roce_cmdq* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = sub nsw i32 %56, 1
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  store i32 -1, i32* %60, align 4
  %61 = load %struct.hns_roce_cmdq*, %struct.hns_roce_cmdq** %4, align 8
  %62 = getelementptr inbounds %struct.hns_roce_cmdq, %struct.hns_roce_cmdq* %61, i32 0, i32 5
  store i64 0, i64* %62, align 8
  %63 = load %struct.hns_roce_cmdq*, %struct.hns_roce_cmdq** %4, align 8
  %64 = getelementptr inbounds %struct.hns_roce_cmdq, %struct.hns_roce_cmdq* %63, i32 0, i32 4
  %65 = load %struct.hns_roce_cmdq*, %struct.hns_roce_cmdq** %4, align 8
  %66 = getelementptr inbounds %struct.hns_roce_cmdq, %struct.hns_roce_cmdq* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @sema_init(i32* %64, i32 %67)
  %69 = load %struct.hns_roce_cmdq*, %struct.hns_roce_cmdq** %4, align 8
  %70 = getelementptr inbounds %struct.hns_roce_cmdq, %struct.hns_roce_cmdq* %69, i32 0, i32 3
  %71 = call i32 @spin_lock_init(i32* %70)
  %72 = load i32, i32* @CMD_TOKEN_MASK, align 4
  %73 = load %struct.hns_roce_cmdq*, %struct.hns_roce_cmdq** %4, align 8
  %74 = getelementptr inbounds %struct.hns_roce_cmdq, %struct.hns_roce_cmdq* %73, i32 0, i32 2
  store i32 %72, i32* %74, align 8
  %75 = load %struct.hns_roce_cmdq*, %struct.hns_roce_cmdq** %4, align 8
  %76 = getelementptr inbounds %struct.hns_roce_cmdq, %struct.hns_roce_cmdq* %75, i32 0, i32 1
  store i32 1, i32* %76, align 4
  store i32 0, i32* %2, align 4
  br label %77

77:                                               ; preds = %50, %19
  %78 = load i32, i32* %2, align 4
  ret i32 %78
}

declare dso_local %struct.TYPE_2__* @kmalloc_array(i32, i32, i32) #1

declare dso_local i32 @sema_init(i32*, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
