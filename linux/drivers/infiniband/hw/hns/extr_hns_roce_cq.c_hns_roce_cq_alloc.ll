; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_cq.c_hns_roce_cq_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_cq.c_hns_roce_cq_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_roce_dev = type { %struct.TYPE_6__*, %struct.TYPE_5__, %struct.TYPE_4__, %struct.hns_roce_cq_table, %struct.device* }
%struct.TYPE_6__ = type { i32 (%struct.hns_roce_dev*, %struct.hns_roce_cq*, i32, i32*, i32, i32, i32)* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { %struct.hns_roce_hem_table, %struct.hns_roce_hem_table }
%struct.hns_roce_hem_table = type { i32 }
%struct.hns_roce_cq_table = type { i32, i32, i32 }
%struct.device = type { i32 }
%struct.hns_roce_mtt = type { i32 }
%struct.hns_roce_cq = type { i32, i32, i32, i32, i32, i64 }
%struct.hns_roce_cmd_mailbox = type { i32 }

@HEM_TYPE_CQE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"CQ alloc.Failed to find cq buf addr.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"CQ alloc.Invalid vector.\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"CQ alloc.Failed to alloc index.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"CQ alloc.Failed to get context mem.\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"CQ alloc failed xa_store.\0A\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"CQ alloc.Failed to cmd mailbox.\0A\00", align 1
@BITMAP_NO_RR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hns_roce_dev*, i32, %struct.hns_roce_mtt*, %struct.hns_roce_cq*, i32)* @hns_roce_cq_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hns_roce_cq_alloc(%struct.hns_roce_dev* %0, i32 %1, %struct.hns_roce_mtt* %2, %struct.hns_roce_cq* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.hns_roce_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.hns_roce_mtt*, align 8
  %10 = alloca %struct.hns_roce_cq*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.hns_roce_cmd_mailbox*, align 8
  %13 = alloca %struct.hns_roce_hem_table*, align 8
  %14 = alloca %struct.hns_roce_cq_table*, align 8
  %15 = alloca %struct.device*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  store %struct.hns_roce_dev* %0, %struct.hns_roce_dev** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.hns_roce_mtt* %2, %struct.hns_roce_mtt** %9, align 8
  store %struct.hns_roce_cq* %3, %struct.hns_roce_cq** %10, align 8
  store i32 %4, i32* %11, align 4
  %19 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %7, align 8
  %20 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %19, i32 0, i32 4
  %21 = load %struct.device*, %struct.device** %20, align 8
  store %struct.device* %21, %struct.device** %15, align 8
  %22 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %7, align 8
  %23 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %22, i32 0, i32 3
  store %struct.hns_roce_cq_table* %23, %struct.hns_roce_cq_table** %14, align 8
  %24 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %7, align 8
  %25 = load i32, i32* @HEM_TYPE_CQE, align 4
  %26 = call i64 @hns_roce_check_whether_mhop(%struct.hns_roce_dev* %24, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %5
  %29 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %7, align 8
  %30 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  store %struct.hns_roce_hem_table* %31, %struct.hns_roce_hem_table** %13, align 8
  br label %36

32:                                               ; preds = %5
  %33 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %7, align 8
  %34 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  store %struct.hns_roce_hem_table* %35, %struct.hns_roce_hem_table** %13, align 8
  br label %36

36:                                               ; preds = %32, %28
  %37 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %7, align 8
  %38 = load %struct.hns_roce_hem_table*, %struct.hns_roce_hem_table** %13, align 8
  %39 = load %struct.hns_roce_mtt*, %struct.hns_roce_mtt** %9, align 8
  %40 = getelementptr inbounds %struct.hns_roce_mtt, %struct.hns_roce_mtt* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32* @hns_roce_table_find(%struct.hns_roce_dev* %37, %struct.hns_roce_hem_table* %38, i32 %41, i32* %16)
  store i32* %42, i32** %17, align 8
  %43 = load i32*, i32** %17, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %50, label %45

45:                                               ; preds = %36
  %46 = load %struct.device*, %struct.device** %15, align 8
  %47 = call i32 @dev_err(%struct.device* %46, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %6, align 4
  br label %180

50:                                               ; preds = %36
  %51 = load i32, i32* %11, align 4
  %52 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %7, align 8
  %53 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp sge i32 %51, %55
  br i1 %56, label %57, label %62

57:                                               ; preds = %50
  %58 = load %struct.device*, %struct.device** %15, align 8
  %59 = call i32 @dev_err(%struct.device* %58, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %6, align 4
  br label %180

62:                                               ; preds = %50
  %63 = load i32, i32* %11, align 4
  %64 = load %struct.hns_roce_cq*, %struct.hns_roce_cq** %10, align 8
  %65 = getelementptr inbounds %struct.hns_roce_cq, %struct.hns_roce_cq* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 8
  %66 = load %struct.hns_roce_cq_table*, %struct.hns_roce_cq_table** %14, align 8
  %67 = getelementptr inbounds %struct.hns_roce_cq_table, %struct.hns_roce_cq_table* %66, i32 0, i32 0
  %68 = load %struct.hns_roce_cq*, %struct.hns_roce_cq** %10, align 8
  %69 = getelementptr inbounds %struct.hns_roce_cq, %struct.hns_roce_cq* %68, i32 0, i32 2
  %70 = call i32 @hns_roce_bitmap_alloc(i32* %67, i32* %69)
  store i32 %70, i32* %18, align 4
  %71 = load i32, i32* %18, align 4
  %72 = icmp eq i32 %71, -1
  br i1 %72, label %73, label %78

73:                                               ; preds = %62
  %74 = load %struct.device*, %struct.device** %15, align 8
  %75 = call i32 @dev_err(%struct.device* %74, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %76 = load i32, i32* @ENOMEM, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %6, align 4
  br label %180

78:                                               ; preds = %62
  %79 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %7, align 8
  %80 = load %struct.hns_roce_cq_table*, %struct.hns_roce_cq_table** %14, align 8
  %81 = getelementptr inbounds %struct.hns_roce_cq_table, %struct.hns_roce_cq_table* %80, i32 0, i32 1
  %82 = load %struct.hns_roce_cq*, %struct.hns_roce_cq** %10, align 8
  %83 = getelementptr inbounds %struct.hns_roce_cq, %struct.hns_roce_cq* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @hns_roce_table_get(%struct.hns_roce_dev* %79, i32* %81, i32 %84)
  store i32 %85, i32* %18, align 4
  %86 = load i32, i32* %18, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %78
  %89 = load %struct.device*, %struct.device** %15, align 8
  %90 = call i32 @dev_err(%struct.device* %89, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  br label %171

91:                                               ; preds = %78
  %92 = load %struct.hns_roce_cq_table*, %struct.hns_roce_cq_table** %14, align 8
  %93 = getelementptr inbounds %struct.hns_roce_cq_table, %struct.hns_roce_cq_table* %92, i32 0, i32 2
  %94 = load %struct.hns_roce_cq*, %struct.hns_roce_cq** %10, align 8
  %95 = getelementptr inbounds %struct.hns_roce_cq, %struct.hns_roce_cq* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.hns_roce_cq*, %struct.hns_roce_cq** %10, align 8
  %98 = load i32, i32* @GFP_KERNEL, align 4
  %99 = call i32 @xa_store(i32* %93, i32 %96, %struct.hns_roce_cq* %97, i32 %98)
  %100 = call i32 @xa_err(i32 %99)
  store i32 %100, i32* %18, align 4
  %101 = load i32, i32* %18, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %91
  %104 = load %struct.device*, %struct.device** %15, align 8
  %105 = call i32 @dev_err(%struct.device* %104, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  br label %163

106:                                              ; preds = %91
  %107 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %7, align 8
  %108 = call %struct.hns_roce_cmd_mailbox* @hns_roce_alloc_cmd_mailbox(%struct.hns_roce_dev* %107)
  store %struct.hns_roce_cmd_mailbox* %108, %struct.hns_roce_cmd_mailbox** %12, align 8
  %109 = load %struct.hns_roce_cmd_mailbox*, %struct.hns_roce_cmd_mailbox** %12, align 8
  %110 = call i64 @IS_ERR(%struct.hns_roce_cmd_mailbox* %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %106
  %113 = load %struct.hns_roce_cmd_mailbox*, %struct.hns_roce_cmd_mailbox** %12, align 8
  %114 = call i32 @PTR_ERR(%struct.hns_roce_cmd_mailbox* %113)
  store i32 %114, i32* %18, align 4
  br label %156

115:                                              ; preds = %106
  %116 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %7, align 8
  %117 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %116, i32 0, i32 0
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 0
  %120 = load i32 (%struct.hns_roce_dev*, %struct.hns_roce_cq*, i32, i32*, i32, i32, i32)*, i32 (%struct.hns_roce_dev*, %struct.hns_roce_cq*, i32, i32*, i32, i32, i32)** %119, align 8
  %121 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %7, align 8
  %122 = load %struct.hns_roce_cq*, %struct.hns_roce_cq** %10, align 8
  %123 = load %struct.hns_roce_cmd_mailbox*, %struct.hns_roce_cmd_mailbox** %12, align 8
  %124 = getelementptr inbounds %struct.hns_roce_cmd_mailbox, %struct.hns_roce_cmd_mailbox* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = load i32*, i32** %17, align 8
  %127 = load i32, i32* %16, align 4
  %128 = load i32, i32* %8, align 4
  %129 = load i32, i32* %11, align 4
  %130 = call i32 %120(%struct.hns_roce_dev* %121, %struct.hns_roce_cq* %122, i32 %125, i32* %126, i32 %127, i32 %128, i32 %129)
  %131 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %7, align 8
  %132 = load %struct.hns_roce_cmd_mailbox*, %struct.hns_roce_cmd_mailbox** %12, align 8
  %133 = load %struct.hns_roce_cq*, %struct.hns_roce_cq** %10, align 8
  %134 = getelementptr inbounds %struct.hns_roce_cq, %struct.hns_roce_cq* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 8
  %136 = call i32 @hns_roce_sw2hw_cq(%struct.hns_roce_dev* %131, %struct.hns_roce_cmd_mailbox* %132, i32 %135)
  store i32 %136, i32* %18, align 4
  %137 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %7, align 8
  %138 = load %struct.hns_roce_cmd_mailbox*, %struct.hns_roce_cmd_mailbox** %12, align 8
  %139 = call i32 @hns_roce_free_cmd_mailbox(%struct.hns_roce_dev* %137, %struct.hns_roce_cmd_mailbox* %138)
  %140 = load i32, i32* %18, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %145

142:                                              ; preds = %115
  %143 = load %struct.device*, %struct.device** %15, align 8
  %144 = call i32 @dev_err(%struct.device* %143, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0))
  br label %156

145:                                              ; preds = %115
  %146 = load %struct.hns_roce_cq*, %struct.hns_roce_cq** %10, align 8
  %147 = getelementptr inbounds %struct.hns_roce_cq, %struct.hns_roce_cq* %146, i32 0, i32 5
  store i64 0, i64* %147, align 8
  %148 = load %struct.hns_roce_cq*, %struct.hns_roce_cq** %10, align 8
  %149 = getelementptr inbounds %struct.hns_roce_cq, %struct.hns_roce_cq* %148, i32 0, i32 1
  store i32 1, i32* %149, align 4
  %150 = load %struct.hns_roce_cq*, %struct.hns_roce_cq** %10, align 8
  %151 = getelementptr inbounds %struct.hns_roce_cq, %struct.hns_roce_cq* %150, i32 0, i32 4
  %152 = call i32 @atomic_set(i32* %151, i32 1)
  %153 = load %struct.hns_roce_cq*, %struct.hns_roce_cq** %10, align 8
  %154 = getelementptr inbounds %struct.hns_roce_cq, %struct.hns_roce_cq* %153, i32 0, i32 3
  %155 = call i32 @init_completion(i32* %154)
  store i32 0, i32* %6, align 4
  br label %180

156:                                              ; preds = %142, %112
  %157 = load %struct.hns_roce_cq_table*, %struct.hns_roce_cq_table** %14, align 8
  %158 = getelementptr inbounds %struct.hns_roce_cq_table, %struct.hns_roce_cq_table* %157, i32 0, i32 2
  %159 = load %struct.hns_roce_cq*, %struct.hns_roce_cq** %10, align 8
  %160 = getelementptr inbounds %struct.hns_roce_cq, %struct.hns_roce_cq* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 8
  %162 = call i32 @xa_erase(i32* %158, i32 %161)
  br label %163

163:                                              ; preds = %156, %103
  %164 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %7, align 8
  %165 = load %struct.hns_roce_cq_table*, %struct.hns_roce_cq_table** %14, align 8
  %166 = getelementptr inbounds %struct.hns_roce_cq_table, %struct.hns_roce_cq_table* %165, i32 0, i32 1
  %167 = load %struct.hns_roce_cq*, %struct.hns_roce_cq** %10, align 8
  %168 = getelementptr inbounds %struct.hns_roce_cq, %struct.hns_roce_cq* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 8
  %170 = call i32 @hns_roce_table_put(%struct.hns_roce_dev* %164, i32* %166, i32 %169)
  br label %171

171:                                              ; preds = %163, %88
  %172 = load %struct.hns_roce_cq_table*, %struct.hns_roce_cq_table** %14, align 8
  %173 = getelementptr inbounds %struct.hns_roce_cq_table, %struct.hns_roce_cq_table* %172, i32 0, i32 0
  %174 = load %struct.hns_roce_cq*, %struct.hns_roce_cq** %10, align 8
  %175 = getelementptr inbounds %struct.hns_roce_cq, %struct.hns_roce_cq* %174, i32 0, i32 2
  %176 = load i32, i32* %175, align 8
  %177 = load i32, i32* @BITMAP_NO_RR, align 4
  %178 = call i32 @hns_roce_bitmap_free(i32* %173, i32 %176, i32 %177)
  %179 = load i32, i32* %18, align 4
  store i32 %179, i32* %6, align 4
  br label %180

180:                                              ; preds = %171, %145, %73, %57, %45
  %181 = load i32, i32* %6, align 4
  ret i32 %181
}

declare dso_local i64 @hns_roce_check_whether_mhop(%struct.hns_roce_dev*, i32) #1

declare dso_local i32* @hns_roce_table_find(%struct.hns_roce_dev*, %struct.hns_roce_hem_table*, i32, i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @hns_roce_bitmap_alloc(i32*, i32*) #1

declare dso_local i32 @hns_roce_table_get(%struct.hns_roce_dev*, i32*, i32) #1

declare dso_local i32 @xa_err(i32) #1

declare dso_local i32 @xa_store(i32*, i32, %struct.hns_roce_cq*, i32) #1

declare dso_local %struct.hns_roce_cmd_mailbox* @hns_roce_alloc_cmd_mailbox(%struct.hns_roce_dev*) #1

declare dso_local i64 @IS_ERR(%struct.hns_roce_cmd_mailbox*) #1

declare dso_local i32 @PTR_ERR(%struct.hns_roce_cmd_mailbox*) #1

declare dso_local i32 @hns_roce_sw2hw_cq(%struct.hns_roce_dev*, %struct.hns_roce_cmd_mailbox*, i32) #1

declare dso_local i32 @hns_roce_free_cmd_mailbox(%struct.hns_roce_dev*, %struct.hns_roce_cmd_mailbox*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @xa_erase(i32*, i32) #1

declare dso_local i32 @hns_roce_table_put(%struct.hns_roce_dev*, i32*, i32) #1

declare dso_local i32 @hns_roce_bitmap_free(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
