; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/usnic/extr_usnic_ib_sysfs.c_summary_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/usnic/extr_usnic_ib_sysfs.c_summary_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usnic_ib_qp_grp = type { %struct.usnic_vnic_res_chunk**, %struct.TYPE_4__*, i32, i32, %struct.TYPE_3__ }
%struct.usnic_vnic_res_chunk = type { i32, %struct.usnic_vnic_res** }
%struct.usnic_vnic_res = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"QPN: %d State: (%s) PID: %u VF Idx: %hu \00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"%s[%d] \00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usnic_ib_qp_grp*, i8*)* @summary_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @summary_show(%struct.usnic_ib_qp_grp* %0, i8* %1) #0 {
  %3 = alloca %struct.usnic_ib_qp_grp*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.usnic_vnic_res_chunk*, align 8
  %11 = alloca %struct.usnic_vnic_res*, align 8
  store %struct.usnic_ib_qp_grp* %0, %struct.usnic_ib_qp_grp** %3, align 8
  store i8* %1, i8** %4, align 8
  %12 = load i32, i32* @PAGE_SIZE, align 4
  store i32 %12, i32* %8, align 4
  %13 = load i8*, i8** %4, align 8
  store i8* %13, i8** %9, align 8
  %14 = load i8*, i8** %9, align 8
  %15 = load i32, i32* %8, align 4
  %16 = load %struct.usnic_ib_qp_grp*, %struct.usnic_ib_qp_grp** %3, align 8
  %17 = getelementptr inbounds %struct.usnic_ib_qp_grp, %struct.usnic_ib_qp_grp* %16, i32 0, i32 4
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.usnic_ib_qp_grp*, %struct.usnic_ib_qp_grp** %3, align 8
  %21 = getelementptr inbounds %struct.usnic_ib_qp_grp, %struct.usnic_ib_qp_grp* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @usnic_ib_qp_grp_state_to_string(i32 %22)
  %24 = load %struct.usnic_ib_qp_grp*, %struct.usnic_ib_qp_grp** %3, align 8
  %25 = getelementptr inbounds %struct.usnic_ib_qp_grp, %struct.usnic_ib_qp_grp* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.usnic_ib_qp_grp*, %struct.usnic_ib_qp_grp** %3, align 8
  %28 = getelementptr inbounds %struct.usnic_ib_qp_grp, %struct.usnic_ib_qp_grp* %27, i32 0, i32 1
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @usnic_vnic_get_index(i32 %31)
  %33 = call i32 (i8*, i32, i8*, ...) @scnprintf(i8* %14, i32 %15, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %23, i32 %26, i32 %32)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = load i8*, i8** %9, align 8
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @UPDATE_PTR_LEFT(i32 %34, i8* %35, i32 %36)
  store i32 0, i32* %5, align 4
  br label %38

38:                                               ; preds = %87, %2
  %39 = load %struct.usnic_ib_qp_grp*, %struct.usnic_ib_qp_grp** %3, align 8
  %40 = getelementptr inbounds %struct.usnic_ib_qp_grp, %struct.usnic_ib_qp_grp* %39, i32 0, i32 0
  %41 = load %struct.usnic_vnic_res_chunk**, %struct.usnic_vnic_res_chunk*** %40, align 8
  %42 = load i32, i32* %5, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.usnic_vnic_res_chunk*, %struct.usnic_vnic_res_chunk** %41, i64 %43
  %45 = load %struct.usnic_vnic_res_chunk*, %struct.usnic_vnic_res_chunk** %44, align 8
  %46 = icmp ne %struct.usnic_vnic_res_chunk* %45, null
  br i1 %46, label %47, label %90

47:                                               ; preds = %38
  %48 = load %struct.usnic_ib_qp_grp*, %struct.usnic_ib_qp_grp** %3, align 8
  %49 = getelementptr inbounds %struct.usnic_ib_qp_grp, %struct.usnic_ib_qp_grp* %48, i32 0, i32 0
  %50 = load %struct.usnic_vnic_res_chunk**, %struct.usnic_vnic_res_chunk*** %49, align 8
  %51 = load i32, i32* %5, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.usnic_vnic_res_chunk*, %struct.usnic_vnic_res_chunk** %50, i64 %52
  %54 = load %struct.usnic_vnic_res_chunk*, %struct.usnic_vnic_res_chunk** %53, align 8
  store %struct.usnic_vnic_res_chunk* %54, %struct.usnic_vnic_res_chunk** %10, align 8
  store i32 0, i32* %6, align 4
  br label %55

55:                                               ; preds = %83, %47
  %56 = load i32, i32* %6, align 4
  %57 = load %struct.usnic_vnic_res_chunk*, %struct.usnic_vnic_res_chunk** %10, align 8
  %58 = getelementptr inbounds %struct.usnic_vnic_res_chunk, %struct.usnic_vnic_res_chunk* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp slt i32 %56, %59
  br i1 %60, label %61, label %86

61:                                               ; preds = %55
  %62 = load %struct.usnic_vnic_res_chunk*, %struct.usnic_vnic_res_chunk** %10, align 8
  %63 = getelementptr inbounds %struct.usnic_vnic_res_chunk, %struct.usnic_vnic_res_chunk* %62, i32 0, i32 1
  %64 = load %struct.usnic_vnic_res**, %struct.usnic_vnic_res*** %63, align 8
  %65 = load i32, i32* %6, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.usnic_vnic_res*, %struct.usnic_vnic_res** %64, i64 %66
  %68 = load %struct.usnic_vnic_res*, %struct.usnic_vnic_res** %67, align 8
  store %struct.usnic_vnic_res* %68, %struct.usnic_vnic_res** %11, align 8
  %69 = load i8*, i8** %9, align 8
  %70 = load i32, i32* %8, align 4
  %71 = load %struct.usnic_vnic_res*, %struct.usnic_vnic_res** %11, align 8
  %72 = getelementptr inbounds %struct.usnic_vnic_res, %struct.usnic_vnic_res* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @usnic_vnic_res_type_to_str(i32 %73)
  %75 = load %struct.usnic_vnic_res*, %struct.usnic_vnic_res** %11, align 8
  %76 = getelementptr inbounds %struct.usnic_vnic_res, %struct.usnic_vnic_res* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 (i8*, i32, i8*, ...) @scnprintf(i8* %69, i32 %70, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %74, i32 %77)
  store i32 %78, i32* %7, align 4
  %79 = load i32, i32* %7, align 4
  %80 = load i8*, i8** %9, align 8
  %81 = load i32, i32* %8, align 4
  %82 = call i32 @UPDATE_PTR_LEFT(i32 %79, i8* %80, i32 %81)
  br label %83

83:                                               ; preds = %61
  %84 = load i32, i32* %6, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %6, align 4
  br label %55

86:                                               ; preds = %55
  br label %87

87:                                               ; preds = %86
  %88 = load i32, i32* %5, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %5, align 4
  br label %38

90:                                               ; preds = %38
  %91 = load i8*, i8** %9, align 8
  %92 = load i32, i32* %8, align 4
  %93 = call i32 (i8*, i32, i8*, ...) @scnprintf(i8* %91, i32 %92, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i32 %93, i32* %7, align 4
  %94 = load i32, i32* %7, align 4
  %95 = load i8*, i8** %9, align 8
  %96 = load i32, i32* %8, align 4
  %97 = call i32 @UPDATE_PTR_LEFT(i32 %94, i8* %95, i32 %96)
  %98 = load i8*, i8** %9, align 8
  %99 = load i8*, i8** %4, align 8
  %100 = ptrtoint i8* %98 to i64
  %101 = ptrtoint i8* %99 to i64
  %102 = sub i64 %100, %101
  %103 = trunc i64 %102 to i32
  ret i32 %103
}

declare dso_local i32 @scnprintf(i8*, i32, i8*, ...) #1

declare dso_local i32 @usnic_ib_qp_grp_state_to_string(i32) #1

declare dso_local i32 @usnic_vnic_get_index(i32) #1

declare dso_local i32 @UPDATE_PTR_LEFT(i32, i8*, i32) #1

declare dso_local i32 @usnic_vnic_res_type_to_str(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
