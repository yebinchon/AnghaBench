; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/usnic/extr_usnic_fwd.c_validate_filter_locked.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/usnic/extr_usnic_fwd.c_validate_filter_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usnic_fwd_dev = type { i64, i32 }
%struct.filter = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i64, i64 }

@FILTER_IPV4_5TUPLE = common dso_local global i64 0, align 8
@FILTER_FIELD_5TUP_DST_AD = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@FILTER_FIELD_5TUP_DST_PT = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usnic_fwd_dev*, %struct.filter*)* @validate_filter_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @validate_filter_locked(%struct.usnic_fwd_dev* %0, %struct.filter* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usnic_fwd_dev*, align 8
  %5 = alloca %struct.filter*, align 8
  store %struct.usnic_fwd_dev* %0, %struct.usnic_fwd_dev** %4, align 8
  store %struct.filter* %1, %struct.filter** %5, align 8
  %6 = load %struct.usnic_fwd_dev*, %struct.usnic_fwd_dev** %4, align 8
  %7 = getelementptr inbounds %struct.usnic_fwd_dev, %struct.usnic_fwd_dev* %6, i32 0, i32 1
  %8 = call i32 @lockdep_assert_held(i32* %7)
  %9 = load %struct.filter*, %struct.filter** %5, align 8
  %10 = getelementptr inbounds %struct.filter, %struct.filter* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @FILTER_IPV4_5TUPLE, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %71

14:                                               ; preds = %2
  %15 = load %struct.filter*, %struct.filter** %5, align 8
  %16 = getelementptr inbounds %struct.filter, %struct.filter* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @FILTER_FIELD_5TUP_DST_AD, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %14
  %24 = load i32, i32* @EACCES, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %72

26:                                               ; preds = %14
  %27 = load %struct.filter*, %struct.filter** %5, align 8
  %28 = getelementptr inbounds %struct.filter, %struct.filter* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @FILTER_FIELD_5TUP_DST_PT, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %26
  %36 = load i32, i32* @EBUSY, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %72

38:                                               ; preds = %26
  %39 = load %struct.usnic_fwd_dev*, %struct.usnic_fwd_dev** %4, align 8
  %40 = getelementptr inbounds %struct.usnic_fwd_dev, %struct.usnic_fwd_dev* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %72

46:                                               ; preds = %38
  %47 = load %struct.filter*, %struct.filter** %5, align 8
  %48 = getelementptr inbounds %struct.filter, %struct.filter* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %46
  %54 = load i32, i32* @ERANGE, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %3, align 4
  br label %72

56:                                               ; preds = %46
  %57 = load %struct.usnic_fwd_dev*, %struct.usnic_fwd_dev** %4, align 8
  %58 = getelementptr inbounds %struct.usnic_fwd_dev, %struct.usnic_fwd_dev* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = call i64 @ntohl(i64 %59)
  %61 = load %struct.filter*, %struct.filter** %5, align 8
  %62 = getelementptr inbounds %struct.filter, %struct.filter* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %60, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %56
  %68 = load i32, i32* @EFAULT, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %3, align 4
  br label %72

70:                                               ; preds = %56
  store i32 0, i32* %3, align 4
  br label %72

71:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %72

72:                                               ; preds = %71, %70, %67, %53, %43, %35, %23
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i64 @ntohl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
