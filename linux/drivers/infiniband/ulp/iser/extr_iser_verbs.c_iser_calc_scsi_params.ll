; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/iser/extr_iser_verbs.c_iser_calc_scsi_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/iser/extr_iser_verbs.c_iser_calc_scsi_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iser_conn = type { i32, i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, %struct.iser_device* }
%struct.iser_device = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.ib_device_attr }
%struct.ib_device_attr = type { i32, i64, i64 }

@IB_DEVICE_MEM_MGT_EXTENSIONS = common dso_local global i32 0, align 4
@IB_DEVICE_SG_GAPS_REG = common dso_local global i32 0, align 4
@SIZE_4K = common dso_local global i32 0, align 4
@uint = common dso_local global i32 0, align 4
@ISCSI_ISER_MAX_SG_TABLESIZE = common dso_local global i16 0, align 2
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iser_conn*, i32)* @iser_calc_scsi_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iser_calc_scsi_params(%struct.iser_conn* %0, i32 %1) #0 {
  %3 = alloca %struct.iser_conn*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.iser_device*, align 8
  %6 = alloca %struct.ib_device_attr*, align 8
  %7 = alloca i16, align 2
  %8 = alloca i16, align 2
  %9 = alloca i16, align 2
  %10 = alloca i64, align 8
  store %struct.iser_conn* %0, %struct.iser_conn** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.iser_conn*, %struct.iser_conn** %3, align 8
  %12 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  %14 = load %struct.iser_device*, %struct.iser_device** %13, align 8
  store %struct.iser_device* %14, %struct.iser_device** %5, align 8
  %15 = load %struct.iser_device*, %struct.iser_device** %5, align 8
  %16 = getelementptr inbounds %struct.iser_device, %struct.iser_device* %15, i32 0, i32 0
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  store %struct.ib_device_attr* %18, %struct.ib_device_attr** %6, align 8
  %19 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %20 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @IB_DEVICE_MEM_MGT_EXTENSIONS, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %2
  %26 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %27 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @IB_DEVICE_SG_GAPS_REG, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %25
  store i16 0, i16* %9, align 2
  br label %34

33:                                               ; preds = %25, %2
  store i16 1, i16* %9, align 2
  br label %34

34:                                               ; preds = %33, %32
  %35 = load %struct.iser_conn*, %struct.iser_conn** %3, align 8
  %36 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %34
  %41 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %42 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  store i64 %43, i64* %10, align 8
  br label %48

44:                                               ; preds = %34
  %45 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %46 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  store i64 %47, i64* %10, align 8
  br label %48

48:                                               ; preds = %44, %40
  %49 = load i32, i32* %4, align 4
  %50 = mul i32 %49, 512
  %51 = load i32, i32* @SIZE_4K, align 4
  %52 = call zeroext i16 @DIV_ROUND_UP(i32 %50, i32 %51)
  store i16 %52, i16* %7, align 2
  %53 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %54 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @IB_DEVICE_MEM_MGT_EXTENSIONS, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %67

59:                                               ; preds = %48
  %60 = load i32, i32* @uint, align 4
  %61 = load i16, i16* @ISCSI_ISER_MAX_SG_TABLESIZE, align 2
  %62 = load i64, i64* %10, align 8
  %63 = load i16, i16* %9, align 2
  %64 = zext i16 %63 to i64
  %65 = sub nsw i64 %62, %64
  %66 = call zeroext i16 @min_t(i32 %60, i16 zeroext %61, i64 %65)
  store i16 %66, i16* %8, align 2
  br label %69

67:                                               ; preds = %48
  %68 = load i16, i16* @ISCSI_ISER_MAX_SG_TABLESIZE, align 2
  store i16 %68, i16* %8, align 2
  br label %69

69:                                               ; preds = %67, %59
  %70 = load i16, i16* %7, align 2
  %71 = load i16, i16* %8, align 2
  %72 = call i32 @min(i16 zeroext %70, i16 zeroext %71)
  %73 = load %struct.iser_conn*, %struct.iser_conn** %3, align 8
  %74 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 8
  %75 = load %struct.iser_conn*, %struct.iser_conn** %3, align 8
  %76 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i16, i16* %9, align 2
  %79 = zext i16 %78 to i32
  %80 = add nsw i32 %77, %79
  %81 = sext i32 %80 to i64
  %82 = load %struct.iser_conn*, %struct.iser_conn** %3, align 8
  %83 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %82, i32 0, i32 1
  store i64 %81, i64* %83, align 8
  ret void
}

declare dso_local zeroext i16 @DIV_ROUND_UP(i32, i32) #1

declare dso_local zeroext i16 @min_t(i32, i16 zeroext, i64) #1

declare dso_local i32 @min(i16 zeroext, i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
