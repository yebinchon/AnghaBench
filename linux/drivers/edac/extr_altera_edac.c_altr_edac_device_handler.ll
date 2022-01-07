; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_altera_edac.c_altr_edac_device_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_altera_edac.c_altr_edac_device_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.edac_device_ctl_info = type { %struct.altr_edac_device_dev* }
%struct.altr_edac_device_dev = type { i32, i32, i32, i32, %struct.edac_device_prv_data* }
%struct.edac_device_prv_data = type { i64, i64 }

@IRQ_NONE = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"\0AEDAC:ECC_DEVICE[Uncorrectable errors]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @altr_edac_device_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @altr_edac_device_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.edac_device_ctl_info*, align 8
  %7 = alloca %struct.altr_edac_device_dev*, align 8
  %8 = alloca %struct.edac_device_prv_data*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %9 = load i32, i32* @IRQ_NONE, align 4
  store i32 %9, i32* %5, align 4
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.edac_device_ctl_info*
  store %struct.edac_device_ctl_info* %11, %struct.edac_device_ctl_info** %6, align 8
  %12 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %6, align 8
  %13 = getelementptr inbounds %struct.edac_device_ctl_info, %struct.edac_device_ctl_info* %12, i32 0, i32 0
  %14 = load %struct.altr_edac_device_dev*, %struct.altr_edac_device_dev** %13, align 8
  store %struct.altr_edac_device_dev* %14, %struct.altr_edac_device_dev** %7, align 8
  %15 = load %struct.altr_edac_device_dev*, %struct.altr_edac_device_dev** %7, align 8
  %16 = getelementptr inbounds %struct.altr_edac_device_dev, %struct.altr_edac_device_dev* %15, i32 0, i32 4
  %17 = load %struct.edac_device_prv_data*, %struct.edac_device_prv_data** %16, align 8
  store %struct.edac_device_prv_data* %17, %struct.edac_device_prv_data** %8, align 8
  %18 = load i32, i32* %3, align 4
  %19 = load %struct.altr_edac_device_dev*, %struct.altr_edac_device_dev** %7, align 8
  %20 = getelementptr inbounds %struct.altr_edac_device_dev, %struct.altr_edac_device_dev* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp eq i32 %18, %21
  br i1 %22, label %23, label %43

23:                                               ; preds = %2
  %24 = load %struct.edac_device_prv_data*, %struct.edac_device_prv_data** %8, align 8
  %25 = getelementptr inbounds %struct.edac_device_prv_data, %struct.edac_device_prv_data* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %23
  %29 = load %struct.edac_device_prv_data*, %struct.edac_device_prv_data** %8, align 8
  %30 = getelementptr inbounds %struct.edac_device_prv_data, %struct.edac_device_prv_data* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.altr_edac_device_dev*, %struct.altr_edac_device_dev** %7, align 8
  %33 = getelementptr inbounds %struct.altr_edac_device_dev, %struct.altr_edac_device_dev* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @writel(i64 %31, i32 %34)
  br label %36

36:                                               ; preds = %28, %23
  %37 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %6, align 8
  %38 = load %struct.altr_edac_device_dev*, %struct.altr_edac_device_dev** %7, align 8
  %39 = getelementptr inbounds %struct.altr_edac_device_dev, %struct.altr_edac_device_dev* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @edac_device_handle_ce(%struct.edac_device_ctl_info* %37, i32 0, i32 0, i32 %40)
  %42 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %42, i32* %5, align 4
  br label %73

43:                                               ; preds = %2
  %44 = load i32, i32* %3, align 4
  %45 = load %struct.altr_edac_device_dev*, %struct.altr_edac_device_dev** %7, align 8
  %46 = getelementptr inbounds %struct.altr_edac_device_dev, %struct.altr_edac_device_dev* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = icmp eq i32 %44, %47
  br i1 %48, label %49, label %70

49:                                               ; preds = %43
  %50 = load %struct.edac_device_prv_data*, %struct.edac_device_prv_data** %8, align 8
  %51 = getelementptr inbounds %struct.edac_device_prv_data, %struct.edac_device_prv_data* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %62

54:                                               ; preds = %49
  %55 = load %struct.edac_device_prv_data*, %struct.edac_device_prv_data** %8, align 8
  %56 = getelementptr inbounds %struct.edac_device_prv_data, %struct.edac_device_prv_data* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.altr_edac_device_dev*, %struct.altr_edac_device_dev** %7, align 8
  %59 = getelementptr inbounds %struct.altr_edac_device_dev, %struct.altr_edac_device_dev* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @writel(i64 %57, i32 %60)
  br label %62

62:                                               ; preds = %54, %49
  %63 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %6, align 8
  %64 = load %struct.altr_edac_device_dev*, %struct.altr_edac_device_dev** %7, align 8
  %65 = getelementptr inbounds %struct.altr_edac_device_dev, %struct.altr_edac_device_dev* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @edac_device_handle_ue(%struct.edac_device_ctl_info* %63, i32 0, i32 0, i32 %66)
  %68 = call i32 @panic(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %69 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %69, i32* %5, align 4
  br label %72

70:                                               ; preds = %43
  %71 = call i32 @WARN_ON(i32 1)
  br label %72

72:                                               ; preds = %70, %62
  br label %73

73:                                               ; preds = %72, %36
  %74 = load i32, i32* %5, align 4
  ret i32 %74
}

declare dso_local i32 @writel(i64, i32) #1

declare dso_local i32 @edac_device_handle_ce(%struct.edac_device_ctl_info*, i32, i32, i32) #1

declare dso_local i32 @edac_device_handle_ue(%struct.edac_device_ctl_info*, i32, i32, i32) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
