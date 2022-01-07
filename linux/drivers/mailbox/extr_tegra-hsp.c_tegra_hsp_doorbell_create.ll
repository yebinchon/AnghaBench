; ModuleID = '/home/carl/AnghaBench/linux/drivers/mailbox/extr_tegra-hsp.c_tegra_hsp_doorbell_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mailbox/extr_tegra-hsp.c_tegra_hsp_doorbell_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_hsp_channel = type { %struct.tegra_hsp*, i64 }
%struct.tegra_hsp = type { i32, i32, i32, i32, i32, i32, i64 }
%struct.tegra_hsp_doorbell = type { i32, i32, %struct.tegra_hsp_channel, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SZ_64K = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.tegra_hsp_channel* (%struct.tegra_hsp*, i8*, i32, i32)* @tegra_hsp_doorbell_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.tegra_hsp_channel* @tegra_hsp_doorbell_create(%struct.tegra_hsp* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.tegra_hsp_channel*, align 8
  %6 = alloca %struct.tegra_hsp*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.tegra_hsp_doorbell*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.tegra_hsp* %0, %struct.tegra_hsp** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.tegra_hsp*, %struct.tegra_hsp** %6, align 8
  %14 = getelementptr inbounds %struct.tegra_hsp, %struct.tegra_hsp* %13, i32 0, i32 5
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.tegra_hsp_doorbell* @devm_kzalloc(i32 %15, i32 32, i32 %16)
  store %struct.tegra_hsp_doorbell* %17, %struct.tegra_hsp_doorbell** %10, align 8
  %18 = load %struct.tegra_hsp_doorbell*, %struct.tegra_hsp_doorbell** %10, align 8
  %19 = icmp ne %struct.tegra_hsp_doorbell* %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %4
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  %23 = call %struct.tegra_hsp_channel* @ERR_PTR(i32 %22)
  store %struct.tegra_hsp_channel* %23, %struct.tegra_hsp_channel** %5, align 8
  br label %86

24:                                               ; preds = %4
  %25 = load %struct.tegra_hsp*, %struct.tegra_hsp** %6, align 8
  %26 = getelementptr inbounds %struct.tegra_hsp, %struct.tegra_hsp* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = sdiv i32 %27, 2
  %29 = add nsw i32 1, %28
  %30 = load %struct.tegra_hsp*, %struct.tegra_hsp** %6, align 8
  %31 = getelementptr inbounds %struct.tegra_hsp, %struct.tegra_hsp* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = add nsw i32 %29, %32
  %34 = load %struct.tegra_hsp*, %struct.tegra_hsp** %6, align 8
  %35 = getelementptr inbounds %struct.tegra_hsp, %struct.tegra_hsp* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = add nsw i32 %33, %36
  %38 = load i32, i32* @SZ_64K, align 4
  %39 = mul nsw i32 %37, %38
  store i32 %39, i32* %11, align 4
  %40 = load i32, i32* %9, align 4
  %41 = mul i32 %40, 256
  %42 = load i32, i32* %11, align 4
  %43 = add i32 %42, %41
  store i32 %43, i32* %11, align 4
  %44 = load %struct.tegra_hsp*, %struct.tegra_hsp** %6, align 8
  %45 = getelementptr inbounds %struct.tegra_hsp, %struct.tegra_hsp* %44, i32 0, i32 6
  %46 = load i64, i64* %45, align 8
  %47 = load i32, i32* %11, align 4
  %48 = zext i32 %47 to i64
  %49 = add nsw i64 %46, %48
  %50 = load %struct.tegra_hsp_doorbell*, %struct.tegra_hsp_doorbell** %10, align 8
  %51 = getelementptr inbounds %struct.tegra_hsp_doorbell, %struct.tegra_hsp_doorbell* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.tegra_hsp_channel, %struct.tegra_hsp_channel* %51, i32 0, i32 1
  store i64 %49, i64* %52, align 8
  %53 = load %struct.tegra_hsp*, %struct.tegra_hsp** %6, align 8
  %54 = load %struct.tegra_hsp_doorbell*, %struct.tegra_hsp_doorbell** %10, align 8
  %55 = getelementptr inbounds %struct.tegra_hsp_doorbell, %struct.tegra_hsp_doorbell* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.tegra_hsp_channel, %struct.tegra_hsp_channel* %55, i32 0, i32 0
  store %struct.tegra_hsp* %53, %struct.tegra_hsp** %56, align 8
  %57 = load %struct.tegra_hsp*, %struct.tegra_hsp** %6, align 8
  %58 = getelementptr inbounds %struct.tegra_hsp, %struct.tegra_hsp* %57, i32 0, i32 5
  %59 = load i32, i32* %58, align 4
  %60 = load i8*, i8** %7, align 8
  %61 = load i32, i32* @GFP_KERNEL, align 4
  %62 = call i32 @devm_kstrdup_const(i32 %59, i8* %60, i32 %61)
  %63 = load %struct.tegra_hsp_doorbell*, %struct.tegra_hsp_doorbell** %10, align 8
  %64 = getelementptr inbounds %struct.tegra_hsp_doorbell, %struct.tegra_hsp_doorbell* %63, i32 0, i32 4
  store i32 %62, i32* %64, align 4
  %65 = load i32, i32* %8, align 4
  %66 = load %struct.tegra_hsp_doorbell*, %struct.tegra_hsp_doorbell** %10, align 8
  %67 = getelementptr inbounds %struct.tegra_hsp_doorbell, %struct.tegra_hsp_doorbell* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 8
  %68 = load i32, i32* %9, align 4
  %69 = load %struct.tegra_hsp_doorbell*, %struct.tegra_hsp_doorbell** %10, align 8
  %70 = getelementptr inbounds %struct.tegra_hsp_doorbell, %struct.tegra_hsp_doorbell* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 4
  %71 = load %struct.tegra_hsp*, %struct.tegra_hsp** %6, align 8
  %72 = getelementptr inbounds %struct.tegra_hsp, %struct.tegra_hsp* %71, i32 0, i32 3
  %73 = load i64, i64* %12, align 8
  %74 = call i32 @spin_lock_irqsave(i32* %72, i64 %73)
  %75 = load %struct.tegra_hsp_doorbell*, %struct.tegra_hsp_doorbell** %10, align 8
  %76 = getelementptr inbounds %struct.tegra_hsp_doorbell, %struct.tegra_hsp_doorbell* %75, i32 0, i32 3
  %77 = load %struct.tegra_hsp*, %struct.tegra_hsp** %6, align 8
  %78 = getelementptr inbounds %struct.tegra_hsp, %struct.tegra_hsp* %77, i32 0, i32 4
  %79 = call i32 @list_add_tail(i32* %76, i32* %78)
  %80 = load %struct.tegra_hsp*, %struct.tegra_hsp** %6, align 8
  %81 = getelementptr inbounds %struct.tegra_hsp, %struct.tegra_hsp* %80, i32 0, i32 3
  %82 = load i64, i64* %12, align 8
  %83 = call i32 @spin_unlock_irqrestore(i32* %81, i64 %82)
  %84 = load %struct.tegra_hsp_doorbell*, %struct.tegra_hsp_doorbell** %10, align 8
  %85 = getelementptr inbounds %struct.tegra_hsp_doorbell, %struct.tegra_hsp_doorbell* %84, i32 0, i32 2
  store %struct.tegra_hsp_channel* %85, %struct.tegra_hsp_channel** %5, align 8
  br label %86

86:                                               ; preds = %24, %20
  %87 = load %struct.tegra_hsp_channel*, %struct.tegra_hsp_channel** %5, align 8
  ret %struct.tegra_hsp_channel* %87
}

declare dso_local %struct.tegra_hsp_doorbell* @devm_kzalloc(i32, i32, i32) #1

declare dso_local %struct.tegra_hsp_channel* @ERR_PTR(i32) #1

declare dso_local i32 @devm_kstrdup_const(i32, i8*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
