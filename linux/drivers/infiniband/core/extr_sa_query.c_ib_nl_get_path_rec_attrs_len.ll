; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_sa_query.c_ib_nl_get_path_rec_attrs_len.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_sa_query.c_ib_nl_get_path_rec_attrs_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IB_SA_PATH_REC_SERVICE_ID = common dso_local global i32 0, align 4
@IB_SA_PATH_REC_DGID = common dso_local global i32 0, align 4
@IB_SA_PATH_REC_SGID = common dso_local global i32 0, align 4
@IB_SA_PATH_REC_TRAFFIC_CLASS = common dso_local global i32 0, align 4
@IB_SA_PATH_REC_PKEY = common dso_local global i32 0, align 4
@IB_SA_PATH_REC_QOS_CLASS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ib_nl_get_path_rec_attrs_len to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ib_nl_get_path_rec_attrs_len(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @IB_SA_PATH_REC_SERVICE_ID, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %1
  %10 = call i64 @nla_total_size(i32 4)
  %11 = load i32, i32* %4, align 4
  %12 = sext i32 %11 to i64
  %13 = add nsw i64 %12, %10
  %14 = trunc i64 %13 to i32
  store i32 %14, i32* %4, align 4
  br label %15

15:                                               ; preds = %9, %1
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* @IB_SA_PATH_REC_DGID, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %15
  %21 = call i64 @nla_total_size(i32 4)
  %22 = load i32, i32* %4, align 4
  %23 = sext i32 %22 to i64
  %24 = add nsw i64 %23, %21
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %4, align 4
  br label %26

26:                                               ; preds = %20, %15
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* @IB_SA_PATH_REC_SGID, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %26
  %32 = call i64 @nla_total_size(i32 4)
  %33 = load i32, i32* %4, align 4
  %34 = sext i32 %33 to i64
  %35 = add nsw i64 %34, %32
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %4, align 4
  br label %37

37:                                               ; preds = %31, %26
  %38 = load i32, i32* %3, align 4
  %39 = load i32, i32* @IB_SA_PATH_REC_TRAFFIC_CLASS, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %37
  %43 = call i64 @nla_total_size(i32 4)
  %44 = load i32, i32* %4, align 4
  %45 = sext i32 %44 to i64
  %46 = add nsw i64 %45, %43
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %4, align 4
  br label %48

48:                                               ; preds = %42, %37
  %49 = load i32, i32* %3, align 4
  %50 = load i32, i32* @IB_SA_PATH_REC_PKEY, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %48
  %54 = call i64 @nla_total_size(i32 4)
  %55 = load i32, i32* %4, align 4
  %56 = sext i32 %55 to i64
  %57 = add nsw i64 %56, %54
  %58 = trunc i64 %57 to i32
  store i32 %58, i32* %4, align 4
  br label %59

59:                                               ; preds = %53, %48
  %60 = load i32, i32* %3, align 4
  %61 = load i32, i32* @IB_SA_PATH_REC_QOS_CLASS, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %59
  %65 = call i64 @nla_total_size(i32 4)
  %66 = load i32, i32* %4, align 4
  %67 = sext i32 %66 to i64
  %68 = add nsw i64 %67, %65
  %69 = trunc i64 %68 to i32
  store i32 %69, i32* %4, align 4
  br label %70

70:                                               ; preds = %64, %59
  %71 = load i32, i32* %4, align 4
  %72 = icmp eq i32 %71, 0
  %73 = zext i1 %72 to i32
  %74 = call i64 @WARN_ON(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %70
  %77 = load i32, i32* %4, align 4
  store i32 %77, i32* %2, align 4
  br label %85

78:                                               ; preds = %70
  %79 = call i64 @NLMSG_ALIGN(i32 4)
  %80 = load i32, i32* %4, align 4
  %81 = sext i32 %80 to i64
  %82 = add nsw i64 %81, %79
  %83 = trunc i64 %82 to i32
  store i32 %83, i32* %4, align 4
  %84 = load i32, i32* %4, align 4
  store i32 %84, i32* %2, align 4
  br label %85

85:                                               ; preds = %78, %76
  %86 = load i32, i32* %2, align 4
  ret i32 %86
}

declare dso_local i64 @nla_total_size(i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i64 @NLMSG_ALIGN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
