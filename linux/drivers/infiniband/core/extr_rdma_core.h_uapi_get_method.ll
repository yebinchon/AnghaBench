; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_rdma_core.h_uapi_get_method.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_rdma_core.h_uapi_get_method.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uverbs_api_write_method = type { i32 }
%struct.uverbs_api = type { i32, i32, %struct.uverbs_api_write_method**, %struct.uverbs_api_write_method** }

@IB_USER_VERBS_CMD_COMMAND_MASK = common dso_local global i32 0, align 4
@IB_USER_VERBS_CMD_FLAG_EXTENDED = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.uverbs_api_write_method* (%struct.uverbs_api*, i32)* @uapi_get_method to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.uverbs_api_write_method* @uapi_get_method(%struct.uverbs_api* %0, i32 %1) #0 {
  %3 = alloca %struct.uverbs_api_write_method*, align 8
  %4 = alloca %struct.uverbs_api*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.uverbs_api* %0, %struct.uverbs_api** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @IB_USER_VERBS_CMD_COMMAND_MASK, align 4
  %9 = and i32 %7, %8
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @IB_USER_VERBS_CMD_FLAG_EXTENDED, align 4
  %12 = load i32, i32* @IB_USER_VERBS_CMD_COMMAND_MASK, align 4
  %13 = or i32 %11, %12
  %14 = xor i32 %13, -1
  %15 = and i32 %10, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  %20 = call %struct.uverbs_api_write_method* @ERR_PTR(i32 %19)
  store %struct.uverbs_api_write_method* %20, %struct.uverbs_api_write_method** %3, align 8
  br label %62

21:                                               ; preds = %2
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @IB_USER_VERBS_CMD_FLAG_EXTENDED, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %44

26:                                               ; preds = %21
  %27 = load i32, i32* %6, align 4
  %28 = load %struct.uverbs_api*, %struct.uverbs_api** %4, align 8
  %29 = getelementptr inbounds %struct.uverbs_api, %struct.uverbs_api* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp sge i32 %27, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %26
  %33 = load i32, i32* @EOPNOTSUPP, align 4
  %34 = sub nsw i32 0, %33
  %35 = call %struct.uverbs_api_write_method* @ERR_PTR(i32 %34)
  store %struct.uverbs_api_write_method* %35, %struct.uverbs_api_write_method** %3, align 8
  br label %62

36:                                               ; preds = %26
  %37 = load %struct.uverbs_api*, %struct.uverbs_api** %4, align 8
  %38 = getelementptr inbounds %struct.uverbs_api, %struct.uverbs_api* %37, i32 0, i32 3
  %39 = load %struct.uverbs_api_write_method**, %struct.uverbs_api_write_method*** %38, align 8
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.uverbs_api_write_method*, %struct.uverbs_api_write_method** %39, i64 %41
  %43 = load %struct.uverbs_api_write_method*, %struct.uverbs_api_write_method** %42, align 8
  store %struct.uverbs_api_write_method* %43, %struct.uverbs_api_write_method** %3, align 8
  br label %62

44:                                               ; preds = %21
  %45 = load i32, i32* %6, align 4
  %46 = load %struct.uverbs_api*, %struct.uverbs_api** %4, align 8
  %47 = getelementptr inbounds %struct.uverbs_api, %struct.uverbs_api* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = icmp sge i32 %45, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %44
  %51 = load i32, i32* @EOPNOTSUPP, align 4
  %52 = sub nsw i32 0, %51
  %53 = call %struct.uverbs_api_write_method* @ERR_PTR(i32 %52)
  store %struct.uverbs_api_write_method* %53, %struct.uverbs_api_write_method** %3, align 8
  br label %62

54:                                               ; preds = %44
  %55 = load %struct.uverbs_api*, %struct.uverbs_api** %4, align 8
  %56 = getelementptr inbounds %struct.uverbs_api, %struct.uverbs_api* %55, i32 0, i32 2
  %57 = load %struct.uverbs_api_write_method**, %struct.uverbs_api_write_method*** %56, align 8
  %58 = load i32, i32* %6, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.uverbs_api_write_method*, %struct.uverbs_api_write_method** %57, i64 %59
  %61 = load %struct.uverbs_api_write_method*, %struct.uverbs_api_write_method** %60, align 8
  store %struct.uverbs_api_write_method* %61, %struct.uverbs_api_write_method** %3, align 8
  br label %62

62:                                               ; preds = %54, %50, %36, %32, %17
  %63 = load %struct.uverbs_api_write_method*, %struct.uverbs_api_write_method** %3, align 8
  ret %struct.uverbs_api_write_method* %63
}

declare dso_local %struct.uverbs_api_write_method* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
