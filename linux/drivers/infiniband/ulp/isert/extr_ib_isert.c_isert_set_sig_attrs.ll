; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/isert/extr_ib_isert.c_isert_set_sig_attrs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/isert/extr_ib_isert.c_isert_set_sig_attrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_cmd = type { i32, i32 }
%struct.ib_sig_attrs = type { i32, %struct.TYPE_2__, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8* }

@IB_SIG_TYPE_NONE = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [29 x i8] c"Unsupported PI operation %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@TARGET_DIF_CHECK_GUARD = common dso_local global i32 0, align 4
@IB_SIG_CHECK_GUARD = common dso_local global i32 0, align 4
@TARGET_DIF_CHECK_APPTAG = common dso_local global i32 0, align 4
@IB_SIG_CHECK_APPTAG = common dso_local global i32 0, align 4
@TARGET_DIF_CHECK_REFTAG = common dso_local global i32 0, align 4
@IB_SIG_CHECK_REFTAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.se_cmd*, %struct.ib_sig_attrs*)* @isert_set_sig_attrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isert_set_sig_attrs(%struct.se_cmd* %0, %struct.ib_sig_attrs* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.se_cmd*, align 8
  %5 = alloca %struct.ib_sig_attrs*, align 8
  store %struct.se_cmd* %0, %struct.se_cmd** %4, align 8
  store %struct.ib_sig_attrs* %1, %struct.ib_sig_attrs** %5, align 8
  %6 = load %struct.ib_sig_attrs*, %struct.ib_sig_attrs** %5, align 8
  %7 = call i32 @memset(%struct.ib_sig_attrs* %6, i32 0, i32 24)
  %8 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %9 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %38 [
    i32 133, label %11
    i32 128, label %11
    i32 130, label %20
    i32 131, label %20
    i32 132, label %29
    i32 129, label %29
  ]

11:                                               ; preds = %2, %2
  %12 = load i8*, i8** @IB_SIG_TYPE_NONE, align 8
  %13 = load %struct.ib_sig_attrs*, %struct.ib_sig_attrs** %5, align 8
  %14 = getelementptr inbounds %struct.ib_sig_attrs, %struct.ib_sig_attrs* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store i8* %12, i8** %15, align 8
  %16 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %17 = load %struct.ib_sig_attrs*, %struct.ib_sig_attrs** %5, align 8
  %18 = getelementptr inbounds %struct.ib_sig_attrs, %struct.ib_sig_attrs* %17, i32 0, i32 2
  %19 = call i32 @isert_set_dif_domain(%struct.se_cmd* %16, %struct.TYPE_2__* %18)
  br label %45

20:                                               ; preds = %2, %2
  %21 = load i8*, i8** @IB_SIG_TYPE_NONE, align 8
  %22 = load %struct.ib_sig_attrs*, %struct.ib_sig_attrs** %5, align 8
  %23 = getelementptr inbounds %struct.ib_sig_attrs, %struct.ib_sig_attrs* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store i8* %21, i8** %24, align 8
  %25 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %26 = load %struct.ib_sig_attrs*, %struct.ib_sig_attrs** %5, align 8
  %27 = getelementptr inbounds %struct.ib_sig_attrs, %struct.ib_sig_attrs* %26, i32 0, i32 1
  %28 = call i32 @isert_set_dif_domain(%struct.se_cmd* %25, %struct.TYPE_2__* %27)
  br label %45

29:                                               ; preds = %2, %2
  %30 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %31 = load %struct.ib_sig_attrs*, %struct.ib_sig_attrs** %5, align 8
  %32 = getelementptr inbounds %struct.ib_sig_attrs, %struct.ib_sig_attrs* %31, i32 0, i32 2
  %33 = call i32 @isert_set_dif_domain(%struct.se_cmd* %30, %struct.TYPE_2__* %32)
  %34 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %35 = load %struct.ib_sig_attrs*, %struct.ib_sig_attrs** %5, align 8
  %36 = getelementptr inbounds %struct.ib_sig_attrs, %struct.ib_sig_attrs* %35, i32 0, i32 1
  %37 = call i32 @isert_set_dif_domain(%struct.se_cmd* %34, %struct.TYPE_2__* %36)
  br label %45

38:                                               ; preds = %2
  %39 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %40 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @isert_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %41)
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %85

45:                                               ; preds = %29, %20, %11
  %46 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %47 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @TARGET_DIF_CHECK_GUARD, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %45
  %53 = load i32, i32* @IB_SIG_CHECK_GUARD, align 4
  %54 = load %struct.ib_sig_attrs*, %struct.ib_sig_attrs** %5, align 8
  %55 = getelementptr inbounds %struct.ib_sig_attrs, %struct.ib_sig_attrs* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = or i32 %56, %53
  store i32 %57, i32* %55, align 8
  br label %58

58:                                               ; preds = %52, %45
  %59 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %60 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @TARGET_DIF_CHECK_APPTAG, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %58
  %66 = load i32, i32* @IB_SIG_CHECK_APPTAG, align 4
  %67 = load %struct.ib_sig_attrs*, %struct.ib_sig_attrs** %5, align 8
  %68 = getelementptr inbounds %struct.ib_sig_attrs, %struct.ib_sig_attrs* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = or i32 %69, %66
  store i32 %70, i32* %68, align 8
  br label %71

71:                                               ; preds = %65, %58
  %72 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %73 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @TARGET_DIF_CHECK_REFTAG, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %71
  %79 = load i32, i32* @IB_SIG_CHECK_REFTAG, align 4
  %80 = load %struct.ib_sig_attrs*, %struct.ib_sig_attrs** %5, align 8
  %81 = getelementptr inbounds %struct.ib_sig_attrs, %struct.ib_sig_attrs* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = or i32 %82, %79
  store i32 %83, i32* %81, align 8
  br label %84

84:                                               ; preds = %78, %71
  store i32 0, i32* %3, align 4
  br label %85

85:                                               ; preds = %84, %38
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local i32 @memset(%struct.ib_sig_attrs*, i32, i32) #1

declare dso_local i32 @isert_set_dif_domain(%struct.se_cmd*, %struct.TYPE_2__*) #1

declare dso_local i32 @isert_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
