; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_mr.c_hns_roce_mr_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_mr.c_hns_roce_mr_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_roce_dev = type { %struct.TYPE_4__, %struct.TYPE_3__*, %struct.hns_roce_mr_table, %struct.device* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 (i32, %struct.hns_roce_mr*, i64)*, i32 (i32, %struct.hns_roce_mr*)* }
%struct.hns_roce_mr_table = type { i32 }
%struct.device = type { i32 }
%struct.hns_roce_mr = type { i64, i32, i32 }
%struct.hns_roce_cmd_mailbox = type { i32 }

@MR_TYPE_FRMR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"Write mtpt fail!\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"SW2HW_MPT failed (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hns_roce_dev*, %struct.hns_roce_mr*)* @hns_roce_mr_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hns_roce_mr_enable(%struct.hns_roce_dev* %0, %struct.hns_roce_mr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hns_roce_dev*, align 8
  %5 = alloca %struct.hns_roce_mr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca %struct.hns_roce_cmd_mailbox*, align 8
  %10 = alloca %struct.hns_roce_mr_table*, align 8
  store %struct.hns_roce_dev* %0, %struct.hns_roce_dev** %4, align 8
  store %struct.hns_roce_mr* %1, %struct.hns_roce_mr** %5, align 8
  %11 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %5, align 8
  %12 = getelementptr inbounds %struct.hns_roce_mr, %struct.hns_roce_mr* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @key_to_hw_index(i32 %13)
  store i64 %14, i64* %7, align 8
  %15 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %4, align 8
  %16 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %15, i32 0, i32 3
  %17 = load %struct.device*, %struct.device** %16, align 8
  store %struct.device* %17, %struct.device** %8, align 8
  %18 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %4, align 8
  %19 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %18, i32 0, i32 2
  store %struct.hns_roce_mr_table* %19, %struct.hns_roce_mr_table** %10, align 8
  %20 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %4, align 8
  %21 = load %struct.hns_roce_mr_table*, %struct.hns_roce_mr_table** %10, align 8
  %22 = getelementptr inbounds %struct.hns_roce_mr_table, %struct.hns_roce_mr_table* %21, i32 0, i32 0
  %23 = load i64, i64* %7, align 8
  %24 = call i32 @hns_roce_table_get(%struct.hns_roce_dev* %20, i32* %22, i64 %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %2
  %28 = load i32, i32* %6, align 4
  store i32 %28, i32* %3, align 4
  br label %108

29:                                               ; preds = %2
  %30 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %4, align 8
  %31 = call %struct.hns_roce_cmd_mailbox* @hns_roce_alloc_cmd_mailbox(%struct.hns_roce_dev* %30)
  store %struct.hns_roce_cmd_mailbox* %31, %struct.hns_roce_cmd_mailbox** %9, align 8
  %32 = load %struct.hns_roce_cmd_mailbox*, %struct.hns_roce_cmd_mailbox** %9, align 8
  %33 = call i64 @IS_ERR(%struct.hns_roce_cmd_mailbox* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %29
  %36 = load %struct.hns_roce_cmd_mailbox*, %struct.hns_roce_cmd_mailbox** %9, align 8
  %37 = call i32 @PTR_ERR(%struct.hns_roce_cmd_mailbox* %36)
  store i32 %37, i32* %6, align 4
  br label %101

38:                                               ; preds = %29
  %39 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %5, align 8
  %40 = getelementptr inbounds %struct.hns_roce_mr, %struct.hns_roce_mr* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @MR_TYPE_FRMR, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %56

44:                                               ; preds = %38
  %45 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %4, align 8
  %46 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %45, i32 0, i32 1
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32 (i32, %struct.hns_roce_mr*, i64)*, i32 (i32, %struct.hns_roce_mr*, i64)** %48, align 8
  %50 = load %struct.hns_roce_cmd_mailbox*, %struct.hns_roce_cmd_mailbox** %9, align 8
  %51 = getelementptr inbounds %struct.hns_roce_cmd_mailbox, %struct.hns_roce_cmd_mailbox* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %5, align 8
  %54 = load i64, i64* %7, align 8
  %55 = call i32 %49(i32 %52, %struct.hns_roce_mr* %53, i64 %54)
  store i32 %55, i32* %6, align 4
  br label %67

56:                                               ; preds = %38
  %57 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %4, align 8
  %58 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %57, i32 0, i32 1
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 1
  %61 = load i32 (i32, %struct.hns_roce_mr*)*, i32 (i32, %struct.hns_roce_mr*)** %60, align 8
  %62 = load %struct.hns_roce_cmd_mailbox*, %struct.hns_roce_cmd_mailbox** %9, align 8
  %63 = getelementptr inbounds %struct.hns_roce_cmd_mailbox, %struct.hns_roce_cmd_mailbox* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %5, align 8
  %66 = call i32 %61(i32 %64, %struct.hns_roce_mr* %65)
  store i32 %66, i32* %6, align 4
  br label %67

67:                                               ; preds = %56, %44
  %68 = load i32, i32* %6, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %67
  %71 = load %struct.device*, %struct.device** %8, align 8
  %72 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %71, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %97

73:                                               ; preds = %67
  %74 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %4, align 8
  %75 = load %struct.hns_roce_cmd_mailbox*, %struct.hns_roce_cmd_mailbox** %9, align 8
  %76 = load i64, i64* %7, align 8
  %77 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %4, align 8
  %78 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = sub nsw i32 %80, 1
  %82 = sext i32 %81 to i64
  %83 = and i64 %76, %82
  %84 = call i32 @hns_roce_sw2hw_mpt(%struct.hns_roce_dev* %74, %struct.hns_roce_cmd_mailbox* %75, i64 %83)
  store i32 %84, i32* %6, align 4
  %85 = load i32, i32* %6, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %73
  %88 = load %struct.device*, %struct.device** %8, align 8
  %89 = load i32, i32* %6, align 4
  %90 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %88, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %89)
  br label %97

91:                                               ; preds = %73
  %92 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %5, align 8
  %93 = getelementptr inbounds %struct.hns_roce_mr, %struct.hns_roce_mr* %92, i32 0, i32 1
  store i32 1, i32* %93, align 8
  %94 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %4, align 8
  %95 = load %struct.hns_roce_cmd_mailbox*, %struct.hns_roce_cmd_mailbox** %9, align 8
  %96 = call i32 @hns_roce_free_cmd_mailbox(%struct.hns_roce_dev* %94, %struct.hns_roce_cmd_mailbox* %95)
  store i32 0, i32* %3, align 4
  br label %108

97:                                               ; preds = %87, %70
  %98 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %4, align 8
  %99 = load %struct.hns_roce_cmd_mailbox*, %struct.hns_roce_cmd_mailbox** %9, align 8
  %100 = call i32 @hns_roce_free_cmd_mailbox(%struct.hns_roce_dev* %98, %struct.hns_roce_cmd_mailbox* %99)
  br label %101

101:                                              ; preds = %97, %35
  %102 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %4, align 8
  %103 = load %struct.hns_roce_mr_table*, %struct.hns_roce_mr_table** %10, align 8
  %104 = getelementptr inbounds %struct.hns_roce_mr_table, %struct.hns_roce_mr_table* %103, i32 0, i32 0
  %105 = load i64, i64* %7, align 8
  %106 = call i32 @hns_roce_table_put(%struct.hns_roce_dev* %102, i32* %104, i64 %105)
  %107 = load i32, i32* %6, align 4
  store i32 %107, i32* %3, align 4
  br label %108

108:                                              ; preds = %101, %91, %27
  %109 = load i32, i32* %3, align 4
  ret i32 %109
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
