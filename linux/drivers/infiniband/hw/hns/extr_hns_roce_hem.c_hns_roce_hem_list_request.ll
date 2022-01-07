; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hem.c_hns_roce_hem_list_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hem.c_hns_roce_hem_list_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_roce_dev = type { i32 }
%struct.hns_roce_hem_list = type { i32, i32, i32* }
%struct.hns_roce_buf_region = type { i32, i32 }

@HNS_ROCE_MAX_BT_REGION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"invalid region region_cnt %d!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@BA_BYTE_LEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"alloc hem trunk fail ret=%d!\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"alloc hem root fail ret=%d!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hns_roce_hem_list_request(%struct.hns_roce_dev* %0, %struct.hns_roce_hem_list* %1, %struct.hns_roce_buf_region* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hns_roce_dev*, align 8
  %7 = alloca %struct.hns_roce_hem_list*, align 8
  %8 = alloca %struct.hns_roce_buf_region*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.hns_roce_buf_region*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.hns_roce_dev* %0, %struct.hns_roce_dev** %6, align 8
  store %struct.hns_roce_hem_list* %1, %struct.hns_roce_hem_list** %7, align 8
  store %struct.hns_roce_buf_region* %2, %struct.hns_roce_buf_region** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %13, align 4
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* @HNS_ROCE_MAX_BT_REGION, align 4
  %18 = icmp sgt i32 %16, %17
  br i1 %18, label %19, label %27

19:                                               ; preds = %4
  %20 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %6, align 8
  %21 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %9, align 4
  %24 = call i32 @dev_err(i32 %22, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %5, align 4
  br label %117

27:                                               ; preds = %4
  %28 = load %struct.hns_roce_hem_list*, %struct.hns_roce_hem_list** %7, align 8
  %29 = getelementptr inbounds %struct.hns_roce_hem_list, %struct.hns_roce_hem_list* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = shl i32 1, %30
  %32 = load i32, i32* @BA_BYTE_LEN, align 4
  %33 = sdiv i32 %31, %32
  store i32 %33, i32* %14, align 4
  store i32 0, i32* %15, align 4
  br label %34

34:                                               ; preds = %92, %27
  %35 = load i32, i32* %15, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %95

38:                                               ; preds = %34
  %39 = load %struct.hns_roce_buf_region*, %struct.hns_roce_buf_region** %8, align 8
  %40 = load i32, i32* %15, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.hns_roce_buf_region, %struct.hns_roce_buf_region* %39, i64 %41
  store %struct.hns_roce_buf_region* %42, %struct.hns_roce_buf_region** %10, align 8
  %43 = load %struct.hns_roce_buf_region*, %struct.hns_roce_buf_region** %10, align 8
  %44 = getelementptr inbounds %struct.hns_roce_buf_region, %struct.hns_roce_buf_region* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %38
  br label %92

48:                                               ; preds = %38
  %49 = load %struct.hns_roce_buf_region*, %struct.hns_roce_buf_region** %10, align 8
  %50 = getelementptr inbounds %struct.hns_roce_buf_region, %struct.hns_roce_buf_region* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.hns_roce_buf_region*, %struct.hns_roce_buf_region** %10, align 8
  %53 = getelementptr inbounds %struct.hns_roce_buf_region, %struct.hns_roce_buf_region* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = add nsw i32 %51, %54
  store i32 %55, i32* %12, align 4
  %56 = load %struct.hns_roce_buf_region*, %struct.hns_roce_buf_region** %10, align 8
  %57 = getelementptr inbounds %struct.hns_roce_buf_region, %struct.hns_roce_buf_region* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %11, align 4
  br label %59

59:                                               ; preds = %87, %48
  %60 = load i32, i32* %11, align 4
  %61 = load i32, i32* %12, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %91

63:                                               ; preds = %59
  %64 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %6, align 8
  %65 = load %struct.hns_roce_buf_region*, %struct.hns_roce_buf_region** %10, align 8
  %66 = load i32, i32* %14, align 4
  %67 = load i32, i32* %11, align 4
  %68 = load %struct.hns_roce_hem_list*, %struct.hns_roce_hem_list** %7, align 8
  %69 = getelementptr inbounds %struct.hns_roce_hem_list, %struct.hns_roce_hem_list* %68, i32 0, i32 2
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* %15, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.hns_roce_hem_list*, %struct.hns_roce_hem_list** %7, align 8
  %76 = getelementptr inbounds %struct.hns_roce_hem_list, %struct.hns_roce_hem_list* %75, i32 0, i32 1
  %77 = call i32 @hem_list_alloc_mid_bt(%struct.hns_roce_dev* %64, %struct.hns_roce_buf_region* %65, i32 %66, i32 %67, i32 %74, i32* %76)
  store i32 %77, i32* %13, align 4
  %78 = load i32, i32* %13, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %63
  %81 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %6, align 8
  %82 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* %13, align 4
  %85 = call i32 @dev_err(i32 %83, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %84)
  br label %112

86:                                               ; preds = %63
  br label %87

87:                                               ; preds = %86
  %88 = load i32, i32* %14, align 4
  %89 = load i32, i32* %11, align 4
  %90 = add nsw i32 %89, %88
  store i32 %90, i32* %11, align 4
  br label %59

91:                                               ; preds = %59
  br label %92

92:                                               ; preds = %91, %47
  %93 = load i32, i32* %15, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %15, align 4
  br label %34

95:                                               ; preds = %34
  %96 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %6, align 8
  %97 = load %struct.hns_roce_hem_list*, %struct.hns_roce_hem_list** %7, align 8
  %98 = load i32, i32* %14, align 4
  %99 = load %struct.hns_roce_buf_region*, %struct.hns_roce_buf_region** %8, align 8
  %100 = load i32, i32* %9, align 4
  %101 = call i32 @hem_list_alloc_root_bt(%struct.hns_roce_dev* %96, %struct.hns_roce_hem_list* %97, i32 %98, %struct.hns_roce_buf_region* %99, i32 %100)
  store i32 %101, i32* %13, align 4
  %102 = load i32, i32* %13, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %110

104:                                              ; preds = %95
  %105 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %6, align 8
  %106 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* %13, align 4
  %109 = call i32 @dev_err(i32 %107, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %108)
  br label %111

110:                                              ; preds = %95
  store i32 0, i32* %5, align 4
  br label %117

111:                                              ; preds = %104
  br label %112

112:                                              ; preds = %111, %80
  %113 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %6, align 8
  %114 = load %struct.hns_roce_hem_list*, %struct.hns_roce_hem_list** %7, align 8
  %115 = call i32 @hns_roce_hem_list_release(%struct.hns_roce_dev* %113, %struct.hns_roce_hem_list* %114)
  %116 = load i32, i32* %13, align 4
  store i32 %116, i32* %5, align 4
  br label %117

117:                                              ; preds = %112, %110, %19
  %118 = load i32, i32* %5, align 4
  ret i32 %118
}

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @hem_list_alloc_mid_bt(%struct.hns_roce_dev*, %struct.hns_roce_buf_region*, i32, i32, i32, i32*) #1

declare dso_local i32 @hem_list_alloc_root_bt(%struct.hns_roce_dev*, %struct.hns_roce_hem_list*, i32, %struct.hns_roce_buf_region*, i32) #1

declare dso_local i32 @hns_roce_hem_list_release(%struct.hns_roce_dev*, %struct.hns_roce_hem_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
