; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/nx/extr_nx-842-powernv.c_nx842_exec_vas.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/nx/extr_nx-842-powernv.c_nx842_exec_vas.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.coprocessor_request_block = type { i32, %struct.coprocessor_status_block }
%struct.coprocessor_status_block = type { i32 }
%struct.nx842_workmem = type { i32, %struct.coprocessor_request_block }
%struct.vas_window = type { i32 }

@WORKMEM_ALIGN = common dso_local global i32 0, align 4
@CCW_FC_842 = common dso_local global i32 0, align 4
@cpu_txwin = common dso_local global i32 0, align 4
@VAS_RETRIES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"VAS copy/paste failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8*, i32*, i8*, i32)* @nx842_exec_vas to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nx842_exec_vas(i8* %0, i32 %1, i8* %2, i32* %3, i8* %4, i32 %5) #0 {
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
  %17 = alloca %struct.vas_window*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i32* %3, i32** %11, align 8
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  store i32 0, i32* %19, align 4
  %22 = load i32*, i32** %11, align 8
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %21, align 4
  %24 = load i8*, i8** %12, align 8
  %25 = load i32, i32* @WORKMEM_ALIGN, align 4
  %26 = call %struct.nx842_workmem* @PTR_ALIGN(i8* %24, i32 %25)
  store %struct.nx842_workmem* %26, %struct.nx842_workmem** %16, align 8
  %27 = load i32*, i32** %11, align 8
  store i32 0, i32* %27, align 4
  %28 = load %struct.nx842_workmem*, %struct.nx842_workmem** %16, align 8
  %29 = getelementptr inbounds %struct.nx842_workmem, %struct.nx842_workmem* %28, i32 0, i32 1
  store %struct.coprocessor_request_block* %29, %struct.coprocessor_request_block** %14, align 8
  %30 = load %struct.coprocessor_request_block*, %struct.coprocessor_request_block** %14, align 8
  %31 = getelementptr inbounds %struct.coprocessor_request_block, %struct.coprocessor_request_block* %30, i32 0, i32 1
  store %struct.coprocessor_status_block* %31, %struct.coprocessor_status_block** %15, align 8
  %32 = load i8*, i8** %8, align 8
  %33 = load i32, i32* %9, align 4
  %34 = load i8*, i8** %10, align 8
  %35 = load i32, i32* %21, align 4
  %36 = load %struct.nx842_workmem*, %struct.nx842_workmem** %16, align 8
  %37 = call i32 @nx842_config_crb(i8* %32, i32 %33, i8* %34, i32 %35, %struct.nx842_workmem* %36)
  store i32 %37, i32* %18, align 4
  %38 = load i32, i32* %18, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %6
  %41 = load i32, i32* %18, align 4
  store i32 %41, i32* %7, align 4
  br label %93

42:                                               ; preds = %6
  store i64 0, i64* %20, align 8
  %43 = load i32, i32* @CCW_FC_842, align 4
  %44 = load i64, i64* %20, align 8
  %45 = load i32, i32* %13, align 4
  %46 = call i64 @SET_FIELD(i32 %43, i64 %44, i32 %45)
  store i64 %46, i64* %20, align 8
  %47 = load i64, i64* %20, align 8
  %48 = call i32 @cpu_to_be32(i64 %47)
  %49 = load %struct.coprocessor_request_block*, %struct.coprocessor_request_block** %14, align 8
  %50 = getelementptr inbounds %struct.coprocessor_request_block, %struct.coprocessor_request_block* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 4
  br label %51

51:                                               ; preds = %71, %42
  %52 = call i32 (...) @ktime_get()
  %53 = load %struct.nx842_workmem*, %struct.nx842_workmem** %16, align 8
  %54 = getelementptr inbounds %struct.nx842_workmem, %struct.nx842_workmem* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 4
  %55 = call i32 (...) @preempt_disable()
  %56 = load i32, i32* @cpu_txwin, align 4
  %57 = call %struct.vas_window* @this_cpu_read(i32 %56)
  store %struct.vas_window* %57, %struct.vas_window** %17, align 8
  %58 = load %struct.coprocessor_request_block*, %struct.coprocessor_request_block** %14, align 8
  %59 = call i32 @vas_copy_crb(%struct.coprocessor_request_block* %58, i32 0)
  %60 = load %struct.vas_window*, %struct.vas_window** %17, align 8
  %61 = call i32 @vas_paste_crb(%struct.vas_window* %60, i32 0, i32 1)
  store i32 %61, i32* %18, align 4
  %62 = call i32 (...) @preempt_enable()
  br label %63

63:                                               ; preds = %51
  %64 = load i32, i32* %18, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %63
  %67 = load i32, i32* %19, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %19, align 4
  %69 = load i32, i32* @VAS_RETRIES, align 4
  %70 = icmp slt i32 %67, %69
  br label %71

71:                                               ; preds = %66, %63
  %72 = phi i1 [ false, %63 ], [ %70, %66 ]
  br i1 %72, label %51, label %73

73:                                               ; preds = %71
  %74 = load i32, i32* %18, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %73
  %77 = call i32 @pr_err_ratelimited(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %78 = load i32, i32* %18, align 4
  store i32 %78, i32* %7, align 4
  br label %93

79:                                               ; preds = %73
  %80 = load %struct.nx842_workmem*, %struct.nx842_workmem** %16, align 8
  %81 = load %struct.coprocessor_status_block*, %struct.coprocessor_status_block** %15, align 8
  %82 = call i32 @wait_for_csb(%struct.nx842_workmem* %80, %struct.coprocessor_status_block* %81)
  store i32 %82, i32* %18, align 4
  %83 = load i32, i32* %18, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %91, label %85

85:                                               ; preds = %79
  %86 = load %struct.coprocessor_status_block*, %struct.coprocessor_status_block** %15, align 8
  %87 = getelementptr inbounds %struct.coprocessor_status_block, %struct.coprocessor_status_block* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @be32_to_cpu(i32 %88)
  %90 = load i32*, i32** %11, align 8
  store i32 %89, i32* %90, align 4
  br label %91

91:                                               ; preds = %85, %79
  %92 = load i32, i32* %18, align 4
  store i32 %92, i32* %7, align 4
  br label %93

93:                                               ; preds = %91, %76, %40
  %94 = load i32, i32* %7, align 4
  ret i32 %94
}

declare dso_local %struct.nx842_workmem* @PTR_ALIGN(i8*, i32) #1

declare dso_local i32 @nx842_config_crb(i8*, i32, i8*, i32, %struct.nx842_workmem*) #1

declare dso_local i64 @SET_FIELD(i32, i64, i32) #1

declare dso_local i32 @cpu_to_be32(i64) #1

declare dso_local i32 @ktime_get(...) #1

declare dso_local i32 @preempt_disable(...) #1

declare dso_local %struct.vas_window* @this_cpu_read(i32) #1

declare dso_local i32 @vas_copy_crb(%struct.coprocessor_request_block*, i32) #1

declare dso_local i32 @vas_paste_crb(%struct.vas_window*, i32, i32) #1

declare dso_local i32 @preempt_enable(...) #1

declare dso_local i32 @pr_err_ratelimited(i8*) #1

declare dso_local i32 @wait_for_csb(%struct.nx842_workmem*, %struct.coprocessor_status_block*) #1

declare dso_local i32 @be32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
