; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_main.c_hns_roce_setup_hca.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_main.c_hns_roce_setup_hca.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_roce_dev = type { i32, %struct.TYPE_2__, i32, i32, i32, i32, %struct.device* }
%struct.TYPE_2__ = type { i32 }
%struct.device = type { i32 }

@HNS_ROCE_CAP_FLAG_RECORD_DB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Failed to initialize uar table. aborting\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Failed to allocate priv_uar.\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"Failed to init protected domain table.\0A\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"Failed to init memory region table.\0A\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"Failed to init completion queue table.\0A\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"Failed to init queue pair table.\0A\00", align 1
@HNS_ROCE_CAP_FLAG_SRQ = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [43 x i8] c"Failed to init share receive queue table.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hns_roce_dev*)* @hns_roce_setup_hca to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hns_roce_setup_hca(%struct.hns_roce_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hns_roce_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  store %struct.hns_roce_dev* %0, %struct.hns_roce_dev** %3, align 8
  %6 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %7 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %6, i32 0, i32 6
  %8 = load %struct.device*, %struct.device** %7, align 8
  store %struct.device* %8, %struct.device** %5, align 8
  %9 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %10 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %9, i32 0, i32 5
  %11 = call i32 @spin_lock_init(i32* %10)
  %12 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %13 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %12, i32 0, i32 4
  %14 = call i32 @spin_lock_init(i32* %13)
  %15 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %16 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @HNS_ROCE_CAP_FLAG_RECORD_DB, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %1
  %23 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %24 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %23, i32 0, i32 3
  %25 = call i32 @INIT_LIST_HEAD(i32* %24)
  %26 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %27 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %26, i32 0, i32 2
  %28 = call i32 @mutex_init(i32* %27)
  br label %29

29:                                               ; preds = %22, %1
  %30 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %31 = call i32 @hns_roce_init_uar_table(%struct.hns_roce_dev* %30)
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* %4, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = load %struct.device*, %struct.device** %5, align 8
  %36 = call i32 @dev_err(%struct.device* %35, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %37 = load i32, i32* %4, align 4
  store i32 %37, i32* %2, align 4
  br label %128

38:                                               ; preds = %29
  %39 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %40 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %41 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %40, i32 0, i32 0
  %42 = call i32 @hns_roce_uar_alloc(%struct.hns_roce_dev* %39, i32* %41)
  store i32 %42, i32* %4, align 4
  %43 = load i32, i32* %4, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %38
  %46 = load %struct.device*, %struct.device** %5, align 8
  %47 = call i32 @dev_err(%struct.device* %46, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %124

48:                                               ; preds = %38
  %49 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %50 = call i32 @hns_roce_init_pd_table(%struct.hns_roce_dev* %49)
  store i32 %50, i32* %4, align 4
  %51 = load i32, i32* %4, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %48
  %54 = load %struct.device*, %struct.device** %5, align 8
  %55 = call i32 @dev_err(%struct.device* %54, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  br label %119

56:                                               ; preds = %48
  %57 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %58 = call i32 @hns_roce_init_mr_table(%struct.hns_roce_dev* %57)
  store i32 %58, i32* %4, align 4
  %59 = load i32, i32* %4, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %56
  %62 = load %struct.device*, %struct.device** %5, align 8
  %63 = call i32 @dev_err(%struct.device* %62, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  br label %116

64:                                               ; preds = %56
  %65 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %66 = call i32 @hns_roce_init_cq_table(%struct.hns_roce_dev* %65)
  store i32 %66, i32* %4, align 4
  %67 = load i32, i32* %4, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %64
  %70 = load %struct.device*, %struct.device** %5, align 8
  %71 = call i32 @dev_err(%struct.device* %70, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0))
  br label %113

72:                                               ; preds = %64
  %73 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %74 = call i32 @hns_roce_init_qp_table(%struct.hns_roce_dev* %73)
  store i32 %74, i32* %4, align 4
  %75 = load i32, i32* %4, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %72
  %78 = load %struct.device*, %struct.device** %5, align 8
  %79 = call i32 @dev_err(%struct.device* %78, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0))
  br label %110

80:                                               ; preds = %72
  %81 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %82 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @HNS_ROCE_CAP_FLAG_SRQ, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %97

88:                                               ; preds = %80
  %89 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %90 = call i32 @hns_roce_init_srq_table(%struct.hns_roce_dev* %89)
  store i32 %90, i32* %4, align 4
  %91 = load i32, i32* %4, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %88
  %94 = load %struct.device*, %struct.device** %5, align 8
  %95 = call i32 @dev_err(%struct.device* %94, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.6, i64 0, i64 0))
  br label %98

96:                                               ; preds = %88
  br label %97

97:                                               ; preds = %96, %80
  store i32 0, i32* %2, align 4
  br label %128

98:                                               ; preds = %93
  %99 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %100 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @HNS_ROCE_CAP_FLAG_SRQ, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %98
  %107 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %108 = call i32 @hns_roce_cleanup_qp_table(%struct.hns_roce_dev* %107)
  br label %109

109:                                              ; preds = %106, %98
  br label %110

110:                                              ; preds = %109, %77
  %111 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %112 = call i32 @hns_roce_cleanup_cq_table(%struct.hns_roce_dev* %111)
  br label %113

113:                                              ; preds = %110, %69
  %114 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %115 = call i32 @hns_roce_cleanup_mr_table(%struct.hns_roce_dev* %114)
  br label %116

116:                                              ; preds = %113, %61
  %117 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %118 = call i32 @hns_roce_cleanup_pd_table(%struct.hns_roce_dev* %117)
  br label %119

119:                                              ; preds = %116, %53
  %120 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %121 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %122 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %121, i32 0, i32 0
  %123 = call i32 @hns_roce_uar_free(%struct.hns_roce_dev* %120, i32* %122)
  br label %124

124:                                              ; preds = %119, %45
  %125 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %126 = call i32 @hns_roce_cleanup_uar_table(%struct.hns_roce_dev* %125)
  %127 = load i32, i32* %4, align 4
  store i32 %127, i32* %2, align 4
  br label %128

128:                                              ; preds = %124, %97, %34
  %129 = load i32, i32* %2, align 4
  ret i32 %129
}

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @hns_roce_init_uar_table(%struct.hns_roce_dev*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @hns_roce_uar_alloc(%struct.hns_roce_dev*, i32*) #1

declare dso_local i32 @hns_roce_init_pd_table(%struct.hns_roce_dev*) #1

declare dso_local i32 @hns_roce_init_mr_table(%struct.hns_roce_dev*) #1

declare dso_local i32 @hns_roce_init_cq_table(%struct.hns_roce_dev*) #1

declare dso_local i32 @hns_roce_init_qp_table(%struct.hns_roce_dev*) #1

declare dso_local i32 @hns_roce_init_srq_table(%struct.hns_roce_dev*) #1

declare dso_local i32 @hns_roce_cleanup_qp_table(%struct.hns_roce_dev*) #1

declare dso_local i32 @hns_roce_cleanup_cq_table(%struct.hns_roce_dev*) #1

declare dso_local i32 @hns_roce_cleanup_mr_table(%struct.hns_roce_dev*) #1

declare dso_local i32 @hns_roce_cleanup_pd_table(%struct.hns_roce_dev*) #1

declare dso_local i32 @hns_roce_uar_free(%struct.hns_roce_dev*, i32*) #1

declare dso_local i32 @hns_roce_cleanup_uar_table(%struct.hns_roce_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
