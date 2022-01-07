; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qedr/extr_qedr_roce_cm.c_qedr_create_gsi_qp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qedr/extr_qedr_roce_cm.c_qedr_create_gsi_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_qp = type { i32 }
%struct.qedr_dev = type { %struct.TYPE_10__*, %struct.TYPE_9__*, i32 }
%struct.TYPE_10__ = type { i8* }
%struct.TYPE_9__ = type { i32 }
%struct.ib_qp_init_attr = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.qedr_qp = type { i8*, %struct.ib_qp, i8*, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [43 x i8] c"create gsi qp: failed on ll2 start. rc=%d\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@QEDR_CQ_TYPE_GSI = common dso_local global i8* null, align 8
@QEDR_MSG_GSI = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"created GSI QP %p\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"create gsi qp: failed destroy on create\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ib_qp* @qedr_create_gsi_qp(%struct.qedr_dev* %0, %struct.ib_qp_init_attr* %1, %struct.qedr_qp* %2) #0 {
  %4 = alloca %struct.ib_qp*, align 8
  %5 = alloca %struct.qedr_dev*, align 8
  %6 = alloca %struct.ib_qp_init_attr*, align 8
  %7 = alloca %struct.qedr_qp*, align 8
  %8 = alloca i32, align 4
  store %struct.qedr_dev* %0, %struct.qedr_dev** %5, align 8
  store %struct.ib_qp_init_attr* %1, %struct.ib_qp_init_attr** %6, align 8
  store %struct.qedr_qp* %2, %struct.qedr_qp** %7, align 8
  %9 = load %struct.qedr_dev*, %struct.qedr_dev** %5, align 8
  %10 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %6, align 8
  %11 = call i32 @qedr_check_gsi_qp_attrs(%struct.qedr_dev* %9, %struct.ib_qp_init_attr* %10)
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load i32, i32* %8, align 4
  %16 = call %struct.ib_qp* @ERR_PTR(i32 %15)
  store %struct.ib_qp* %16, %struct.ib_qp** %4, align 8
  br label %124

17:                                               ; preds = %3
  %18 = load %struct.qedr_dev*, %struct.qedr_dev** %5, align 8
  %19 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %6, align 8
  %20 = load %struct.qedr_qp*, %struct.qedr_qp** %7, align 8
  %21 = call i32 @qedr_ll2_start(%struct.qedr_dev* %18, %struct.ib_qp_init_attr* %19, %struct.qedr_qp* %20)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %17
  %25 = load %struct.qedr_dev*, %struct.qedr_dev** %5, align 8
  %26 = load i32, i32* %8, align 4
  %27 = call i32 (%struct.qedr_dev*, i8*, ...) @DP_ERR(%struct.qedr_dev* %25, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load i32, i32* %8, align 4
  %29 = call %struct.ib_qp* @ERR_PTR(i32 %28)
  store %struct.ib_qp* %29, %struct.ib_qp** %4, align 8
  br label %124

30:                                               ; preds = %17
  %31 = load %struct.qedr_qp*, %struct.qedr_qp** %7, align 8
  %32 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %32, i32 0, i32 0
  store i32 1, i32* %33, align 8
  %34 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %6, align 8
  %35 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.qedr_qp*, %struct.qedr_qp** %7, align 8
  %39 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %38, i32 0, i32 4
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  store i32 %37, i32* %40, align 4
  %41 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %6, align 8
  %42 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.qedr_qp*, %struct.qedr_qp** %7, align 8
  %46 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %45, i32 0, i32 3
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  store i32 %44, i32* %47, align 8
  %48 = load %struct.qedr_qp*, %struct.qedr_qp** %7, align 8
  %49 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %48, i32 0, i32 4
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @GFP_KERNEL, align 4
  %53 = call i8* @kcalloc(i32 %51, i32 1, i32 %52)
  %54 = load %struct.qedr_qp*, %struct.qedr_qp** %7, align 8
  %55 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %54, i32 0, i32 0
  store i8* %53, i8** %55, align 8
  %56 = load %struct.qedr_qp*, %struct.qedr_qp** %7, align 8
  %57 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %56, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %61, label %60

60:                                               ; preds = %30
  br label %108

61:                                               ; preds = %30
  %62 = load %struct.qedr_qp*, %struct.qedr_qp** %7, align 8
  %63 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %62, i32 0, i32 3
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @GFP_KERNEL, align 4
  %67 = call i8* @kcalloc(i32 %65, i32 1, i32 %66)
  %68 = load %struct.qedr_qp*, %struct.qedr_qp** %7, align 8
  %69 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %68, i32 0, i32 2
  store i8* %67, i8** %69, align 8
  %70 = load %struct.qedr_qp*, %struct.qedr_qp** %7, align 8
  %71 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %70, i32 0, i32 2
  %72 = load i8*, i8** %71, align 8
  %73 = icmp ne i8* %72, null
  br i1 %73, label %75, label %74

74:                                               ; preds = %61
  br label %108

75:                                               ; preds = %61
  %76 = load %struct.qedr_dev*, %struct.qedr_dev** %5, align 8
  %77 = load %struct.qedr_qp*, %struct.qedr_qp** %7, align 8
  %78 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %6, align 8
  %79 = call i32 @qedr_store_gsi_qp_cq(%struct.qedr_dev* %76, %struct.qedr_qp* %77, %struct.ib_qp_init_attr* %78)
  %80 = load %struct.qedr_dev*, %struct.qedr_dev** %5, align 8
  %81 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.qedr_dev*, %struct.qedr_dev** %5, align 8
  %84 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %83, i32 0, i32 1
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @ether_addr_copy(i32 %82, i32 %87)
  %89 = load %struct.qedr_dev*, %struct.qedr_dev** %5, align 8
  %90 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %6, align 8
  %91 = call i32 @qedr_destroy_gsi_cq(%struct.qedr_dev* %89, %struct.ib_qp_init_attr* %90)
  %92 = load i8*, i8** @QEDR_CQ_TYPE_GSI, align 8
  %93 = load %struct.qedr_dev*, %struct.qedr_dev** %5, align 8
  %94 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %93, i32 0, i32 0
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 0
  store i8* %92, i8** %96, align 8
  %97 = load i8*, i8** @QEDR_CQ_TYPE_GSI, align 8
  %98 = load %struct.qedr_dev*, %struct.qedr_dev** %5, align 8
  %99 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %98, i32 0, i32 0
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 0
  store i8* %97, i8** %101, align 8
  %102 = load %struct.qedr_dev*, %struct.qedr_dev** %5, align 8
  %103 = load i32, i32* @QEDR_MSG_GSI, align 4
  %104 = load %struct.qedr_qp*, %struct.qedr_qp** %7, align 8
  %105 = call i32 @DP_DEBUG(%struct.qedr_dev* %102, i32 %103, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), %struct.qedr_qp* %104)
  %106 = load %struct.qedr_qp*, %struct.qedr_qp** %7, align 8
  %107 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %106, i32 0, i32 1
  store %struct.ib_qp* %107, %struct.ib_qp** %4, align 8
  br label %124

108:                                              ; preds = %74, %60
  %109 = load %struct.qedr_qp*, %struct.qedr_qp** %7, align 8
  %110 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %109, i32 0, i32 0
  %111 = load i8*, i8** %110, align 8
  %112 = call i32 @kfree(i8* %111)
  %113 = load %struct.qedr_dev*, %struct.qedr_dev** %5, align 8
  %114 = call i32 @qedr_ll2_stop(%struct.qedr_dev* %113)
  store i32 %114, i32* %8, align 4
  %115 = load i32, i32* %8, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %108
  %118 = load %struct.qedr_dev*, %struct.qedr_dev** %5, align 8
  %119 = call i32 (%struct.qedr_dev*, i8*, ...) @DP_ERR(%struct.qedr_dev* %118, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  br label %120

120:                                              ; preds = %117, %108
  %121 = load i32, i32* @ENOMEM, align 4
  %122 = sub nsw i32 0, %121
  %123 = call %struct.ib_qp* @ERR_PTR(i32 %122)
  store %struct.ib_qp* %123, %struct.ib_qp** %4, align 8
  br label %124

124:                                              ; preds = %120, %75, %24, %14
  %125 = load %struct.ib_qp*, %struct.ib_qp** %4, align 8
  ret %struct.ib_qp* %125
}

declare dso_local i32 @qedr_check_gsi_qp_attrs(%struct.qedr_dev*, %struct.ib_qp_init_attr*) #1

declare dso_local %struct.ib_qp* @ERR_PTR(i32) #1

declare dso_local i32 @qedr_ll2_start(%struct.qedr_dev*, %struct.ib_qp_init_attr*, %struct.qedr_qp*) #1

declare dso_local i32 @DP_ERR(%struct.qedr_dev*, i8*, ...) #1

declare dso_local i8* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @qedr_store_gsi_qp_cq(%struct.qedr_dev*, %struct.qedr_qp*, %struct.ib_qp_init_attr*) #1

declare dso_local i32 @ether_addr_copy(i32, i32) #1

declare dso_local i32 @qedr_destroy_gsi_cq(%struct.qedr_dev*, %struct.ib_qp_init_attr*) #1

declare dso_local i32 @DP_DEBUG(%struct.qedr_dev*, i32, i8*, %struct.qedr_qp*) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @qedr_ll2_stop(%struct.qedr_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
