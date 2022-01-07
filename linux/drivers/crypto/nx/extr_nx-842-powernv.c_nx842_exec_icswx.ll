; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/nx/extr_nx-842-powernv.c_nx842_exec_icswx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/nx/extr_nx-842-powernv.c_nx842_exec_icswx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.coprocessor_request_block = type { i32, %struct.coprocessor_status_block }
%struct.coprocessor_status_block = type { i32 }
%struct.nx842_workmem = type { i32, %struct.coprocessor_request_block }

@WORKMEM_ALIGN = common dso_local global i32 0, align 4
@nx842_ct = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"coprocessor CT is 0\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@CCW_CT = common dso_local global i32 0, align 4
@CCW_CI_842 = common dso_local global i32 0, align 4
@CCW_FC_842 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"icswx CR %x ccw %x crb->ccw %x\0A\00", align 1
@ICSWX_XERS0 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"842 Coprocessor busy\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"ICSWX rejected\0A\00", align 1
@EPROTO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8*, i32*, i8*, i32)* @nx842_exec_icswx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nx842_exec_icswx(i8* %0, i32 %1, i8* %2, i32* %3, i8* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.coprocessor_request_block*, align 8
  %15 = alloca %struct.coprocessor_status_block*, align 8
  %16 = alloca %struct.nx842_workmem*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i32* %3, i32** %11, align 8
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  %20 = load i32*, i32** %11, align 8
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %19, align 4
  %22 = load i8*, i8** %12, align 8
  %23 = load i32, i32* @WORKMEM_ALIGN, align 4
  %24 = call %struct.nx842_workmem* @PTR_ALIGN(i8* %22, i32 %23)
  store %struct.nx842_workmem* %24, %struct.nx842_workmem** %16, align 8
  %25 = load i32*, i32** %11, align 8
  store i32 0, i32* %25, align 4
  %26 = load i32, i32* @nx842_ct, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %6
  %29 = call i32 @pr_err_ratelimited(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* @ENODEV, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %7, align 4
  br label %102

32:                                               ; preds = %6
  %33 = load i8*, i8** %8, align 8
  %34 = load i32, i32* %9, align 4
  %35 = load i8*, i8** %10, align 8
  %36 = load i32, i32* %19, align 4
  %37 = load %struct.nx842_workmem*, %struct.nx842_workmem** %16, align 8
  %38 = call i32 @nx842_config_crb(i8* %33, i32 %34, i8* %35, i32 %36, %struct.nx842_workmem* %37)
  store i32 %38, i32* %17, align 4
  %39 = load i32, i32* %17, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %32
  %42 = load i32, i32* %17, align 4
  store i32 %42, i32* %7, align 4
  br label %102

43:                                               ; preds = %32
  %44 = load %struct.nx842_workmem*, %struct.nx842_workmem** %16, align 8
  %45 = getelementptr inbounds %struct.nx842_workmem, %struct.nx842_workmem* %44, i32 0, i32 1
  store %struct.coprocessor_request_block* %45, %struct.coprocessor_request_block** %14, align 8
  %46 = load %struct.coprocessor_request_block*, %struct.coprocessor_request_block** %14, align 8
  %47 = getelementptr inbounds %struct.coprocessor_request_block, %struct.coprocessor_request_block* %46, i32 0, i32 1
  store %struct.coprocessor_status_block* %47, %struct.coprocessor_status_block** %15, align 8
  store i64 0, i64* %18, align 8
  %48 = load i32, i32* @CCW_CT, align 4
  %49 = load i64, i64* %18, align 8
  %50 = load i32, i32* @nx842_ct, align 4
  %51 = call i64 @SET_FIELD(i32 %48, i64 %49, i32 %50)
  store i64 %51, i64* %18, align 8
  %52 = load i32, i32* @CCW_CI_842, align 4
  %53 = load i64, i64* %18, align 8
  %54 = call i64 @SET_FIELD(i32 %52, i64 %53, i32 0)
  store i64 %54, i64* %18, align 8
  %55 = load i32, i32* @CCW_FC_842, align 4
  %56 = load i64, i64* %18, align 8
  %57 = load i32, i32* %13, align 4
  %58 = call i64 @SET_FIELD(i32 %55, i64 %56, i32 %57)
  store i64 %58, i64* %18, align 8
  %59 = call i32 (...) @ktime_get()
  %60 = load %struct.nx842_workmem*, %struct.nx842_workmem** %16, align 8
  %61 = getelementptr inbounds %struct.nx842_workmem, %struct.nx842_workmem* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 4
  %62 = load i64, i64* %18, align 8
  %63 = call i32 @cpu_to_be32(i64 %62)
  %64 = load %struct.coprocessor_request_block*, %struct.coprocessor_request_block** %14, align 8
  %65 = call i32 @icswx(i32 %63, %struct.coprocessor_request_block* %64)
  store i32 %65, i32* %17, align 4
  %66 = load i32, i32* %17, align 4
  %67 = load i64, i64* %18, align 8
  %68 = trunc i64 %67 to i32
  %69 = load %struct.coprocessor_request_block*, %struct.coprocessor_request_block** %14, align 8
  %70 = getelementptr inbounds %struct.coprocessor_request_block, %struct.coprocessor_request_block* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @be32_to_cpu(i32 %71)
  %73 = call i32 (i8*, ...) @pr_debug_ratelimited(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %66, i32 %68, i32 %72)
  %74 = load i32, i32* @ICSWX_XERS0, align 4
  %75 = xor i32 %74, -1
  %76 = load i32, i32* %17, align 4
  %77 = and i32 %76, %75
  store i32 %77, i32* %17, align 4
  %78 = load i32, i32* %17, align 4
  switch i32 %78, label %91 [
    i32 129, label %79
    i32 130, label %83
    i32 128, label %87
  ]

79:                                               ; preds = %43
  %80 = load %struct.nx842_workmem*, %struct.nx842_workmem** %16, align 8
  %81 = load %struct.coprocessor_status_block*, %struct.coprocessor_status_block** %15, align 8
  %82 = call i32 @wait_for_csb(%struct.nx842_workmem* %80, %struct.coprocessor_status_block* %81)
  store i32 %82, i32* %17, align 4
  br label %91

83:                                               ; preds = %43
  %84 = call i32 (i8*, ...) @pr_debug_ratelimited(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %85 = load i32, i32* @EBUSY, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %17, align 4
  br label %91

87:                                               ; preds = %43
  %88 = call i32 @pr_err_ratelimited(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  %89 = load i32, i32* @EPROTO, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %17, align 4
  br label %91

91:                                               ; preds = %43, %87, %83, %79
  %92 = load i32, i32* %17, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %100, label %94

94:                                               ; preds = %91
  %95 = load %struct.coprocessor_status_block*, %struct.coprocessor_status_block** %15, align 8
  %96 = getelementptr inbounds %struct.coprocessor_status_block, %struct.coprocessor_status_block* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @be32_to_cpu(i32 %97)
  %99 = load i32*, i32** %11, align 8
  store i32 %98, i32* %99, align 4
  br label %100

100:                                              ; preds = %94, %91
  %101 = load i32, i32* %17, align 4
  store i32 %101, i32* %7, align 4
  br label %102

102:                                              ; preds = %100, %41, %28
  %103 = load i32, i32* %7, align 4
  ret i32 %103
}

declare dso_local %struct.nx842_workmem* @PTR_ALIGN(i8*, i32) #1

declare dso_local i32 @pr_err_ratelimited(i8*) #1

declare dso_local i32 @nx842_config_crb(i8*, i32, i8*, i32, %struct.nx842_workmem*) #1

declare dso_local i64 @SET_FIELD(i32, i64, i32) #1

declare dso_local i32 @ktime_get(...) #1

declare dso_local i32 @icswx(i32, %struct.coprocessor_request_block*) #1

declare dso_local i32 @cpu_to_be32(i64) #1

declare dso_local i32 @pr_debug_ratelimited(i8*, ...) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @wait_for_csb(%struct.nx842_workmem*, %struct.coprocessor_status_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
