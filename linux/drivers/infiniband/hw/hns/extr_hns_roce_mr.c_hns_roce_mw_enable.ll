; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_mr.c_hns_roce_mw_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_mr.c_hns_roce_mw_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_roce_dev = type { %struct.TYPE_4__, %struct.TYPE_3__*, %struct.device*, %struct.hns_roce_mr_table }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 (i32, %struct.hns_roce_mw*)* }
%struct.device = type { i32 }
%struct.hns_roce_mr_table = type { i32 }
%struct.hns_roce_mw = type { i32, i32 }
%struct.hns_roce_cmd_mailbox = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"MW write mtpt fail!\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"MW sw2hw_mpt failed (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hns_roce_dev*, %struct.hns_roce_mw*)* @hns_roce_mw_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hns_roce_mw_enable(%struct.hns_roce_dev* %0, %struct.hns_roce_mw* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hns_roce_dev*, align 8
  %5 = alloca %struct.hns_roce_mw*, align 8
  %6 = alloca %struct.hns_roce_mr_table*, align 8
  %7 = alloca %struct.hns_roce_cmd_mailbox*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.hns_roce_dev* %0, %struct.hns_roce_dev** %4, align 8
  store %struct.hns_roce_mw* %1, %struct.hns_roce_mw** %5, align 8
  %11 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %4, align 8
  %12 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %11, i32 0, i32 3
  store %struct.hns_roce_mr_table* %12, %struct.hns_roce_mr_table** %6, align 8
  %13 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %4, align 8
  %14 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %13, i32 0, i32 2
  %15 = load %struct.device*, %struct.device** %14, align 8
  store %struct.device* %15, %struct.device** %8, align 8
  %16 = load %struct.hns_roce_mw*, %struct.hns_roce_mw** %5, align 8
  %17 = getelementptr inbounds %struct.hns_roce_mw, %struct.hns_roce_mw* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @key_to_hw_index(i32 %18)
  store i64 %19, i64* %9, align 8
  %20 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %4, align 8
  %21 = load %struct.hns_roce_mr_table*, %struct.hns_roce_mr_table** %6, align 8
  %22 = getelementptr inbounds %struct.hns_roce_mr_table, %struct.hns_roce_mr_table* %21, i32 0, i32 0
  %23 = load i64, i64* %9, align 8
  %24 = call i32 @hns_roce_table_get(%struct.hns_roce_dev* %20, i32* %22, i64 %23)
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %10, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %2
  %28 = load i32, i32* %10, align 4
  store i32 %28, i32* %3, align 4
  br label %89

29:                                               ; preds = %2
  %30 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %4, align 8
  %31 = call %struct.hns_roce_cmd_mailbox* @hns_roce_alloc_cmd_mailbox(%struct.hns_roce_dev* %30)
  store %struct.hns_roce_cmd_mailbox* %31, %struct.hns_roce_cmd_mailbox** %7, align 8
  %32 = load %struct.hns_roce_cmd_mailbox*, %struct.hns_roce_cmd_mailbox** %7, align 8
  %33 = call i64 @IS_ERR(%struct.hns_roce_cmd_mailbox* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %29
  %36 = load %struct.hns_roce_cmd_mailbox*, %struct.hns_roce_cmd_mailbox** %7, align 8
  %37 = call i32 @PTR_ERR(%struct.hns_roce_cmd_mailbox* %36)
  store i32 %37, i32* %10, align 4
  br label %82

38:                                               ; preds = %29
  %39 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %4, align 8
  %40 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %39, i32 0, i32 1
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32 (i32, %struct.hns_roce_mw*)*, i32 (i32, %struct.hns_roce_mw*)** %42, align 8
  %44 = load %struct.hns_roce_cmd_mailbox*, %struct.hns_roce_cmd_mailbox** %7, align 8
  %45 = getelementptr inbounds %struct.hns_roce_cmd_mailbox, %struct.hns_roce_cmd_mailbox* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.hns_roce_mw*, %struct.hns_roce_mw** %5, align 8
  %48 = call i32 %43(i32 %46, %struct.hns_roce_mw* %47)
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* %10, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %38
  %52 = load %struct.device*, %struct.device** %8, align 8
  %53 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %52, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %78

54:                                               ; preds = %38
  %55 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %4, align 8
  %56 = load %struct.hns_roce_cmd_mailbox*, %struct.hns_roce_cmd_mailbox** %7, align 8
  %57 = load i64, i64* %9, align 8
  %58 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %4, align 8
  %59 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = sub nsw i32 %61, 1
  %63 = sext i32 %62 to i64
  %64 = and i64 %57, %63
  %65 = call i32 @hns_roce_sw2hw_mpt(%struct.hns_roce_dev* %55, %struct.hns_roce_cmd_mailbox* %56, i64 %64)
  store i32 %65, i32* %10, align 4
  %66 = load i32, i32* %10, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %54
  %69 = load %struct.device*, %struct.device** %8, align 8
  %70 = load i32, i32* %10, align 4
  %71 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %69, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %70)
  br label %78

72:                                               ; preds = %54
  %73 = load %struct.hns_roce_mw*, %struct.hns_roce_mw** %5, align 8
  %74 = getelementptr inbounds %struct.hns_roce_mw, %struct.hns_roce_mw* %73, i32 0, i32 0
  store i32 1, i32* %74, align 4
  %75 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %4, align 8
  %76 = load %struct.hns_roce_cmd_mailbox*, %struct.hns_roce_cmd_mailbox** %7, align 8
  %77 = call i32 @hns_roce_free_cmd_mailbox(%struct.hns_roce_dev* %75, %struct.hns_roce_cmd_mailbox* %76)
  store i32 0, i32* %3, align 4
  br label %89

78:                                               ; preds = %68, %51
  %79 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %4, align 8
  %80 = load %struct.hns_roce_cmd_mailbox*, %struct.hns_roce_cmd_mailbox** %7, align 8
  %81 = call i32 @hns_roce_free_cmd_mailbox(%struct.hns_roce_dev* %79, %struct.hns_roce_cmd_mailbox* %80)
  br label %82

82:                                               ; preds = %78, %35
  %83 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %4, align 8
  %84 = load %struct.hns_roce_mr_table*, %struct.hns_roce_mr_table** %6, align 8
  %85 = getelementptr inbounds %struct.hns_roce_mr_table, %struct.hns_roce_mr_table* %84, i32 0, i32 0
  %86 = load i64, i64* %9, align 8
  %87 = call i32 @hns_roce_table_put(%struct.hns_roce_dev* %83, i32* %85, i64 %86)
  %88 = load i32, i32* %10, align 4
  store i32 %88, i32* %3, align 4
  br label %89

89:                                               ; preds = %82, %72, %27
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

declare dso_local i64 @key_to_hw_index(i32) #1

declare dso_local i32 @hns_roce_table_get(%struct.hns_roce_dev*, i32*, i64) #1

declare dso_local %struct.hns_roce_cmd_mailbox* @hns_roce_alloc_cmd_mailbox(%struct.hns_roce_dev*) #1

declare dso_local i64 @IS_ERR(%struct.hns_roce_cmd_mailbox*) #1

declare dso_local i32 @PTR_ERR(%struct.hns_roce_cmd_mailbox*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @hns_roce_sw2hw_mpt(%struct.hns_roce_dev*, %struct.hns_roce_cmd_mailbox*, i64) #1

declare dso_local i32 @hns_roce_free_cmd_mailbox(%struct.hns_roce_dev*, %struct.hns_roce_cmd_mailbox*) #1

declare dso_local i32 @hns_roce_table_put(%struct.hns_roce_dev*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
