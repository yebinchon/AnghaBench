; ModuleID = '/home/carl/AnghaBench/linux/drivers/i3c/master/extr_i3c-master-cdns.c_cdns_i3c_master_request_ibi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i3c/master/extr_i3c-master-cdns.c_cdns_i3c_master_request_ibi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i3c_dev_desc = type { i32 }
%struct.i3c_ibi_setup = type { i32 }
%struct.i3c_master_controller = type { i32 }
%struct.cdns_i3c_master = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, %struct.i3c_dev_desc** }
%struct.cdns_i3c_i2c_dev_data = type { i32, i32* }

@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i3c_dev_desc*, %struct.i3c_ibi_setup*)* @cdns_i3c_master_request_ibi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdns_i3c_master_request_ibi(%struct.i3c_dev_desc* %0, %struct.i3c_ibi_setup* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i3c_dev_desc*, align 8
  %5 = alloca %struct.i3c_ibi_setup*, align 8
  %6 = alloca %struct.i3c_master_controller*, align 8
  %7 = alloca %struct.cdns_i3c_master*, align 8
  %8 = alloca %struct.cdns_i3c_i2c_dev_data*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.i3c_dev_desc* %0, %struct.i3c_dev_desc** %4, align 8
  store %struct.i3c_ibi_setup* %1, %struct.i3c_ibi_setup** %5, align 8
  %11 = load %struct.i3c_dev_desc*, %struct.i3c_dev_desc** %4, align 8
  %12 = call %struct.i3c_master_controller* @i3c_dev_get_master(%struct.i3c_dev_desc* %11)
  store %struct.i3c_master_controller* %12, %struct.i3c_master_controller** %6, align 8
  %13 = load %struct.i3c_master_controller*, %struct.i3c_master_controller** %6, align 8
  %14 = call %struct.cdns_i3c_master* @to_cdns_i3c_master(%struct.i3c_master_controller* %13)
  store %struct.cdns_i3c_master* %14, %struct.cdns_i3c_master** %7, align 8
  %15 = load %struct.i3c_dev_desc*, %struct.i3c_dev_desc** %4, align 8
  %16 = call %struct.cdns_i3c_i2c_dev_data* @i3c_dev_get_master_data(%struct.i3c_dev_desc* %15)
  store %struct.cdns_i3c_i2c_dev_data* %16, %struct.cdns_i3c_i2c_dev_data** %8, align 8
  %17 = load %struct.i3c_dev_desc*, %struct.i3c_dev_desc** %4, align 8
  %18 = load %struct.i3c_ibi_setup*, %struct.i3c_ibi_setup** %5, align 8
  %19 = call i32* @i3c_generic_ibi_alloc_pool(%struct.i3c_dev_desc* %17, %struct.i3c_ibi_setup* %18)
  %20 = load %struct.cdns_i3c_i2c_dev_data*, %struct.cdns_i3c_i2c_dev_data** %8, align 8
  %21 = getelementptr inbounds %struct.cdns_i3c_i2c_dev_data, %struct.cdns_i3c_i2c_dev_data* %20, i32 0, i32 1
  store i32* %19, i32** %21, align 8
  %22 = load %struct.cdns_i3c_i2c_dev_data*, %struct.cdns_i3c_i2c_dev_data** %8, align 8
  %23 = getelementptr inbounds %struct.cdns_i3c_i2c_dev_data, %struct.cdns_i3c_i2c_dev_data* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = call i64 @IS_ERR(i32* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %2
  %28 = load %struct.cdns_i3c_i2c_dev_data*, %struct.cdns_i3c_i2c_dev_data** %8, align 8
  %29 = getelementptr inbounds %struct.cdns_i3c_i2c_dev_data, %struct.cdns_i3c_i2c_dev_data* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = call i32 @PTR_ERR(i32* %30)
  store i32 %31, i32* %3, align 4
  br label %93

32:                                               ; preds = %2
  %33 = load %struct.cdns_i3c_master*, %struct.cdns_i3c_master** %7, align 8
  %34 = getelementptr inbounds %struct.cdns_i3c_master, %struct.cdns_i3c_master* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i64, i64* %9, align 8
  %37 = call i32 @spin_lock_irqsave(i32* %35, i64 %36)
  store i32 0, i32* %10, align 4
  br label %38

38:                                               ; preds = %68, %32
  %39 = load i32, i32* %10, align 4
  %40 = load %struct.cdns_i3c_master*, %struct.cdns_i3c_master** %7, align 8
  %41 = getelementptr inbounds %struct.cdns_i3c_master, %struct.cdns_i3c_master* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp ult i32 %39, %43
  br i1 %44, label %45, label %71

45:                                               ; preds = %38
  %46 = load %struct.cdns_i3c_master*, %struct.cdns_i3c_master** %7, align 8
  %47 = getelementptr inbounds %struct.cdns_i3c_master, %struct.cdns_i3c_master* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 2
  %49 = load %struct.i3c_dev_desc**, %struct.i3c_dev_desc*** %48, align 8
  %50 = load i32, i32* %10, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds %struct.i3c_dev_desc*, %struct.i3c_dev_desc** %49, i64 %51
  %53 = load %struct.i3c_dev_desc*, %struct.i3c_dev_desc** %52, align 8
  %54 = icmp ne %struct.i3c_dev_desc* %53, null
  br i1 %54, label %67, label %55

55:                                               ; preds = %45
  %56 = load i32, i32* %10, align 4
  %57 = load %struct.cdns_i3c_i2c_dev_data*, %struct.cdns_i3c_i2c_dev_data** %8, align 8
  %58 = getelementptr inbounds %struct.cdns_i3c_i2c_dev_data, %struct.cdns_i3c_i2c_dev_data* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 8
  %59 = load %struct.i3c_dev_desc*, %struct.i3c_dev_desc** %4, align 8
  %60 = load %struct.cdns_i3c_master*, %struct.cdns_i3c_master** %7, align 8
  %61 = getelementptr inbounds %struct.cdns_i3c_master, %struct.cdns_i3c_master* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 2
  %63 = load %struct.i3c_dev_desc**, %struct.i3c_dev_desc*** %62, align 8
  %64 = load i32, i32* %10, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds %struct.i3c_dev_desc*, %struct.i3c_dev_desc** %63, i64 %65
  store %struct.i3c_dev_desc* %59, %struct.i3c_dev_desc** %66, align 8
  br label %71

67:                                               ; preds = %45
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %10, align 4
  %70 = add i32 %69, 1
  store i32 %70, i32* %10, align 4
  br label %38

71:                                               ; preds = %55, %38
  %72 = load %struct.cdns_i3c_master*, %struct.cdns_i3c_master** %7, align 8
  %73 = getelementptr inbounds %struct.cdns_i3c_master, %struct.cdns_i3c_master* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 1
  %75 = load i64, i64* %9, align 8
  %76 = call i32 @spin_unlock_irqrestore(i32* %74, i64 %75)
  %77 = load i32, i32* %10, align 4
  %78 = load %struct.cdns_i3c_master*, %struct.cdns_i3c_master** %7, align 8
  %79 = getelementptr inbounds %struct.cdns_i3c_master, %struct.cdns_i3c_master* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = icmp ult i32 %77, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %71
  store i32 0, i32* %3, align 4
  br label %93

84:                                               ; preds = %71
  %85 = load %struct.cdns_i3c_i2c_dev_data*, %struct.cdns_i3c_i2c_dev_data** %8, align 8
  %86 = getelementptr inbounds %struct.cdns_i3c_i2c_dev_data, %struct.cdns_i3c_i2c_dev_data* %85, i32 0, i32 1
  %87 = load i32*, i32** %86, align 8
  %88 = call i32 @i3c_generic_ibi_free_pool(i32* %87)
  %89 = load %struct.cdns_i3c_i2c_dev_data*, %struct.cdns_i3c_i2c_dev_data** %8, align 8
  %90 = getelementptr inbounds %struct.cdns_i3c_i2c_dev_data, %struct.cdns_i3c_i2c_dev_data* %89, i32 0, i32 1
  store i32* null, i32** %90, align 8
  %91 = load i32, i32* @ENOSPC, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %3, align 4
  br label %93

93:                                               ; preds = %84, %83, %27
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

declare dso_local %struct.i3c_master_controller* @i3c_dev_get_master(%struct.i3c_dev_desc*) #1

declare dso_local %struct.cdns_i3c_master* @to_cdns_i3c_master(%struct.i3c_master_controller*) #1

declare dso_local %struct.cdns_i3c_i2c_dev_data* @i3c_dev_get_master_data(%struct.i3c_dev_desc*) #1

declare dso_local i32* @i3c_generic_ibi_alloc_pool(%struct.i3c_dev_desc*, %struct.i3c_ibi_setup*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @i3c_generic_ibi_free_pool(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
