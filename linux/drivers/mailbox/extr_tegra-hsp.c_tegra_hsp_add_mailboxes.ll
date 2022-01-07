; ModuleID = '/home/carl/AnghaBench/linux/drivers/mailbox/extr_tegra-hsp.c_tegra_hsp_add_mailboxes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mailbox/extr_tegra-hsp.c_tegra_hsp_add_mailboxes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_hsp = type { i32, %struct.TYPE_4__, i64, %struct.tegra_hsp_mailbox* }
%struct.TYPE_4__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.tegra_hsp_mailbox* }
%struct.tegra_hsp_mailbox = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__*, i64, %struct.tegra_hsp* }
%struct.device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SZ_64K = common dso_local global i64 0, align 8
@SZ_32K = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tegra_hsp*, %struct.device*)* @tegra_hsp_add_mailboxes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_hsp_add_mailboxes(%struct.tegra_hsp* %0, %struct.device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tegra_hsp*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.tegra_hsp_mailbox*, align 8
  store %struct.tegra_hsp* %0, %struct.tegra_hsp** %4, align 8
  store %struct.device* %1, %struct.device** %5, align 8
  %8 = load %struct.device*, %struct.device** %5, align 8
  %9 = load %struct.tegra_hsp*, %struct.tegra_hsp** %4, align 8
  %10 = getelementptr inbounds %struct.tegra_hsp, %struct.tegra_hsp* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.tegra_hsp_mailbox* @devm_kcalloc(%struct.device* %8, i32 %11, i32 32, i32 %12)
  %14 = load %struct.tegra_hsp*, %struct.tegra_hsp** %4, align 8
  %15 = getelementptr inbounds %struct.tegra_hsp, %struct.tegra_hsp* %14, i32 0, i32 3
  store %struct.tegra_hsp_mailbox* %13, %struct.tegra_hsp_mailbox** %15, align 8
  %16 = load %struct.tegra_hsp*, %struct.tegra_hsp** %4, align 8
  %17 = getelementptr inbounds %struct.tegra_hsp, %struct.tegra_hsp* %16, i32 0, i32 3
  %18 = load %struct.tegra_hsp_mailbox*, %struct.tegra_hsp_mailbox** %17, align 8
  %19 = icmp ne %struct.tegra_hsp_mailbox* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %77

23:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %24

24:                                               ; preds = %73, %23
  %25 = load i32, i32* %6, align 4
  %26 = load %struct.tegra_hsp*, %struct.tegra_hsp** %4, align 8
  %27 = getelementptr inbounds %struct.tegra_hsp, %struct.tegra_hsp* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp slt i32 %25, %28
  br i1 %29, label %30, label %76

30:                                               ; preds = %24
  %31 = load %struct.tegra_hsp*, %struct.tegra_hsp** %4, align 8
  %32 = getelementptr inbounds %struct.tegra_hsp, %struct.tegra_hsp* %31, i32 0, i32 3
  %33 = load %struct.tegra_hsp_mailbox*, %struct.tegra_hsp_mailbox** %32, align 8
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.tegra_hsp_mailbox, %struct.tegra_hsp_mailbox* %33, i64 %35
  store %struct.tegra_hsp_mailbox* %36, %struct.tegra_hsp_mailbox** %7, align 8
  %37 = load i32, i32* %6, align 4
  %38 = load %struct.tegra_hsp_mailbox*, %struct.tegra_hsp_mailbox** %7, align 8
  %39 = getelementptr inbounds %struct.tegra_hsp_mailbox, %struct.tegra_hsp_mailbox* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = load %struct.tegra_hsp*, %struct.tegra_hsp** %4, align 8
  %41 = load %struct.tegra_hsp_mailbox*, %struct.tegra_hsp_mailbox** %7, align 8
  %42 = getelementptr inbounds %struct.tegra_hsp_mailbox, %struct.tegra_hsp_mailbox* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 2
  store %struct.tegra_hsp* %40, %struct.tegra_hsp** %43, align 8
  %44 = load %struct.tegra_hsp*, %struct.tegra_hsp** %4, align 8
  %45 = getelementptr inbounds %struct.tegra_hsp, %struct.tegra_hsp* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @SZ_64K, align 8
  %48 = add nsw i64 %46, %47
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* @SZ_32K, align 4
  %51 = mul nsw i32 %49, %50
  %52 = sext i32 %51 to i64
  %53 = add nsw i64 %48, %52
  %54 = load %struct.tegra_hsp_mailbox*, %struct.tegra_hsp_mailbox** %7, align 8
  %55 = getelementptr inbounds %struct.tegra_hsp_mailbox, %struct.tegra_hsp_mailbox* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 1
  store i64 %53, i64* %56, align 8
  %57 = load %struct.tegra_hsp*, %struct.tegra_hsp** %4, align 8
  %58 = getelementptr inbounds %struct.tegra_hsp, %struct.tegra_hsp* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %59, align 8
  %61 = load i32, i32* %6, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i64 %62
  %64 = load %struct.tegra_hsp_mailbox*, %struct.tegra_hsp_mailbox** %7, align 8
  %65 = getelementptr inbounds %struct.tegra_hsp_mailbox, %struct.tegra_hsp_mailbox* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  store %struct.TYPE_5__* %63, %struct.TYPE_5__** %66, align 8
  %67 = load %struct.tegra_hsp_mailbox*, %struct.tegra_hsp_mailbox** %7, align 8
  %68 = load %struct.tegra_hsp_mailbox*, %struct.tegra_hsp_mailbox** %7, align 8
  %69 = getelementptr inbounds %struct.tegra_hsp_mailbox, %struct.tegra_hsp_mailbox* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  store %struct.tegra_hsp_mailbox* %67, %struct.tegra_hsp_mailbox** %72, align 8
  br label %73

73:                                               ; preds = %30
  %74 = load i32, i32* %6, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %6, align 4
  br label %24

76:                                               ; preds = %24
  store i32 0, i32* %3, align 4
  br label %77

77:                                               ; preds = %76, %20
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local %struct.tegra_hsp_mailbox* @devm_kcalloc(%struct.device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
