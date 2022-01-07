; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/nx/extr_nx-842-powernv.c_nx842_config_crb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/nx/extr_nx-842-powernv.c_nx842_config_crb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nx842_workmem = type { i32, i32, %struct.coprocessor_request_block }
%struct.coprocessor_request_block = type { i32, i32, i32, %struct.coprocessor_status_block }
%struct.coprocessor_status_block = type { i32 }

@CRB_CSB_ADDRESS = common dso_local global i32 0, align 4
@CRB_CSB_AT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8*, i32, %struct.nx842_workmem*)* @nx842_config_crb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nx842_config_crb(i8* %0, i32 %1, i8* %2, i32 %3, %struct.nx842_workmem* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.nx842_workmem*, align 8
  %12 = alloca %struct.coprocessor_request_block*, align 8
  %13 = alloca %struct.coprocessor_status_block*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.nx842_workmem* %4, %struct.nx842_workmem** %11, align 8
  %16 = load %struct.nx842_workmem*, %struct.nx842_workmem** %11, align 8
  %17 = getelementptr inbounds %struct.nx842_workmem, %struct.nx842_workmem* %16, i32 0, i32 2
  store %struct.coprocessor_request_block* %17, %struct.coprocessor_request_block** %12, align 8
  %18 = load %struct.coprocessor_request_block*, %struct.coprocessor_request_block** %12, align 8
  %19 = getelementptr inbounds %struct.coprocessor_request_block, %struct.coprocessor_request_block* %18, i32 0, i32 3
  store %struct.coprocessor_status_block* %19, %struct.coprocessor_status_block** %13, align 8
  %20 = load %struct.coprocessor_request_block*, %struct.coprocessor_request_block** %12, align 8
  %21 = call i32 @memset(%struct.coprocessor_request_block* %20, i32 0, i32 16)
  %22 = load %struct.coprocessor_request_block*, %struct.coprocessor_request_block** %12, align 8
  %23 = getelementptr inbounds %struct.coprocessor_request_block, %struct.coprocessor_request_block* %22, i32 0, i32 2
  %24 = load %struct.nx842_workmem*, %struct.nx842_workmem** %11, align 8
  %25 = getelementptr inbounds %struct.nx842_workmem, %struct.nx842_workmem* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i8*, i8** %7, align 8
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @setup_ddl(i32* %23, i32 %26, i8* %27, i32 %28, i32 1)
  store i32 %29, i32* %15, align 4
  %30 = load i32, i32* %15, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %5
  %33 = load i32, i32* %15, align 4
  store i32 %33, i32* %6, align 4
  br label %59

34:                                               ; preds = %5
  %35 = load %struct.coprocessor_request_block*, %struct.coprocessor_request_block** %12, align 8
  %36 = getelementptr inbounds %struct.coprocessor_request_block, %struct.coprocessor_request_block* %35, i32 0, i32 1
  %37 = load %struct.nx842_workmem*, %struct.nx842_workmem** %11, align 8
  %38 = getelementptr inbounds %struct.nx842_workmem, %struct.nx842_workmem* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i8*, i8** %9, align 8
  %41 = load i32, i32* %10, align 4
  %42 = call i32 @setup_ddl(i32* %36, i32 %39, i8* %40, i32 %41, i32 0)
  store i32 %42, i32* %15, align 4
  %43 = load i32, i32* %15, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %34
  %46 = load i32, i32* %15, align 4
  store i32 %46, i32* %6, align 4
  br label %59

47:                                               ; preds = %34
  %48 = load %struct.coprocessor_status_block*, %struct.coprocessor_status_block** %13, align 8
  %49 = call i32 @nx842_get_pa(%struct.coprocessor_status_block* %48)
  %50 = load i32, i32* @CRB_CSB_ADDRESS, align 4
  %51 = and i32 %49, %50
  store i32 %51, i32* %14, align 4
  %52 = load i32, i32* @CRB_CSB_AT, align 4
  %53 = load i32, i32* %14, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %14, align 4
  %55 = load i32, i32* %14, align 4
  %56 = call i32 @cpu_to_be64(i32 %55)
  %57 = load %struct.coprocessor_request_block*, %struct.coprocessor_request_block** %12, align 8
  %58 = getelementptr inbounds %struct.coprocessor_request_block, %struct.coprocessor_request_block* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 4
  store i32 0, i32* %6, align 4
  br label %59

59:                                               ; preds = %47, %45, %32
  %60 = load i32, i32* %6, align 4
  ret i32 %60
}

declare dso_local i32 @memset(%struct.coprocessor_request_block*, i32, i32) #1

declare dso_local i32 @setup_ddl(i32*, i32, i8*, i32, i32) #1

declare dso_local i32 @nx842_get_pa(%struct.coprocessor_status_block*) #1

declare dso_local i32 @cpu_to_be64(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
