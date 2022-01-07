; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/common/b2c2/extr_flexcop-sram.c_flexcop_sram_set_dest.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/common/b2c2/extr_flexcop-sram.c_flexcop_sram_set_dest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.flexcop_device = type { i64, i32 (%struct.flexcop_device*, i32, %struct.TYPE_6__*)*, void (%struct.TYPE_6__*, %struct.flexcop_device*, i32)* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i64, i64, i64 }

@sram_dest_reg_714 = common dso_local global i32 0, align 4
@FLEXCOP_III = common dso_local global i64 0, align 8
@FC_SRAM_DEST_TARGET_FC3_CA = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [54 x i8] c"SRAM destination target to available on FlexCopII(b)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"sram dest: %x target: %x\0A\00", align 1
@FC_SRAM_DEST_NET = common dso_local global i32 0, align 4
@FC_SRAM_DEST_CAI = common dso_local global i32 0, align 4
@FC_SRAM_DEST_CAO = common dso_local global i32 0, align 4
@FC_SRAM_DEST_MEDIA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @flexcop_sram_set_dest(%struct.flexcop_device* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.flexcop_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_6__, align 8
  %9 = alloca %struct.TYPE_6__, align 8
  store %struct.flexcop_device* %0, %struct.flexcop_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %10 = load %struct.flexcop_device*, %struct.flexcop_device** %5, align 8
  %11 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %10, i32 0, i32 2
  %12 = load void (%struct.TYPE_6__*, %struct.flexcop_device*, i32)*, void (%struct.TYPE_6__*, %struct.flexcop_device*, i32)** %11, align 8
  %13 = load %struct.flexcop_device*, %struct.flexcop_device** %5, align 8
  %14 = load i32, i32* @sram_dest_reg_714, align 4
  call void %12(%struct.TYPE_6__* sret %9, %struct.flexcop_device* %13, i32 %14)
  %15 = bitcast %struct.TYPE_6__* %8 to i8*
  %16 = bitcast %struct.TYPE_6__* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %15, i8* align 8 %16, i64 32, i1 false)
  %17 = load %struct.flexcop_device*, %struct.flexcop_device** %5, align 8
  %18 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @FLEXCOP_III, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %30

22:                                               ; preds = %3
  %23 = load i64, i64* %7, align 8
  %24 = load i64, i64* @FC_SRAM_DEST_TARGET_FC3_CA, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %22
  %27 = call i32 @err(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %77

30:                                               ; preds = %22, %3
  %31 = load i32, i32* %6, align 4
  %32 = load i64, i64* %7, align 8
  %33 = call i32 @deb_sram(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %31, i64 %32)
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @FC_SRAM_DEST_NET, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %30
  %39 = load i64, i64* %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 3
  store i64 %39, i64* %41, align 8
  br label %42

42:                                               ; preds = %38, %30
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* @FC_SRAM_DEST_CAI, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %42
  %48 = load i64, i64* %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 2
  store i64 %48, i64* %50, align 8
  br label %51

51:                                               ; preds = %47, %42
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* @FC_SRAM_DEST_CAO, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %51
  %57 = load i64, i64* %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 1
  store i64 %57, i64* %59, align 8
  br label %60

60:                                               ; preds = %56, %51
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* @FC_SRAM_DEST_MEDIA, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %60
  %66 = load i64, i64* %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  store i64 %66, i64* %68, align 8
  br label %69

69:                                               ; preds = %65, %60
  %70 = load %struct.flexcop_device*, %struct.flexcop_device** %5, align 8
  %71 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %70, i32 0, i32 1
  %72 = load i32 (%struct.flexcop_device*, i32, %struct.TYPE_6__*)*, i32 (%struct.flexcop_device*, i32, %struct.TYPE_6__*)** %71, align 8
  %73 = load %struct.flexcop_device*, %struct.flexcop_device** %5, align 8
  %74 = load i32, i32* @sram_dest_reg_714, align 4
  %75 = call i32 %72(%struct.flexcop_device* %73, i32 %74, %struct.TYPE_6__* byval(%struct.TYPE_6__) align 8 %8)
  %76 = call i32 @udelay(i32 1000)
  store i32 0, i32* %4, align 4
  br label %77

77:                                               ; preds = %69, %26
  %78 = load i32, i32* %4, align 4
  ret i32 %78
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @err(i8*) #2

declare dso_local i32 @deb_sram(i8*, i32, i64) #2

declare dso_local i32 @udelay(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
