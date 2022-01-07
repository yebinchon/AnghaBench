; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-etm4x-sysfs.c_addr_instdatatype_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-etm4x-sysfs.c_addr_instdatatype_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.etmv4_drvdata = type { i32, %struct.etmv4_config }
%struct.etmv4_config = type { i64, i32* }

@EINVAL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"instr\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @addr_instdatatype_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @addr_instdatatype_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca [20 x i8], align 16
  %12 = alloca %struct.etmv4_drvdata*, align 8
  %13 = alloca %struct.etmv4_config*, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = bitcast [20 x i8]* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %14, i8 0, i64 20, i1 false)
  %15 = load %struct.device*, %struct.device** %6, align 8
  %16 = getelementptr inbounds %struct.device, %struct.device* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.etmv4_drvdata* @dev_get_drvdata(i32 %17)
  store %struct.etmv4_drvdata* %18, %struct.etmv4_drvdata** %12, align 8
  %19 = load %struct.etmv4_drvdata*, %struct.etmv4_drvdata** %12, align 8
  %20 = getelementptr inbounds %struct.etmv4_drvdata, %struct.etmv4_drvdata* %19, i32 0, i32 1
  store %struct.etmv4_config* %20, %struct.etmv4_config** %13, align 8
  %21 = load i8*, i8** %8, align 8
  %22 = call i32 @strlen(i8* %21)
  %23 = icmp sge i32 %22, 20
  br i1 %23, label %24, label %27

24:                                               ; preds = %4
  %25 = load i64, i64* @EINVAL, align 8
  %26 = sub i64 0, %25
  store i64 %26, i64* %5, align 8
  br label %62

27:                                               ; preds = %4
  %28 = load i8*, i8** %8, align 8
  %29 = getelementptr inbounds [20 x i8], [20 x i8]* %11, i64 0, i64 0
  %30 = call i32 @sscanf(i8* %28, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %29)
  %31 = icmp ne i32 %30, 1
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load i64, i64* @EINVAL, align 8
  %34 = sub i64 0, %33
  store i64 %34, i64* %5, align 8
  br label %62

35:                                               ; preds = %27
  %36 = load %struct.etmv4_drvdata*, %struct.etmv4_drvdata** %12, align 8
  %37 = getelementptr inbounds %struct.etmv4_drvdata, %struct.etmv4_drvdata* %36, i32 0, i32 0
  %38 = call i32 @spin_lock(i32* %37)
  %39 = load %struct.etmv4_config*, %struct.etmv4_config** %13, align 8
  %40 = getelementptr inbounds %struct.etmv4_config, %struct.etmv4_config* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  store i64 %41, i64* %10, align 8
  %42 = getelementptr inbounds [20 x i8], [20 x i8]* %11, i64 0, i64 0
  %43 = call i32 @strcmp(i8* %42, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %57, label %45

45:                                               ; preds = %35
  %46 = call i32 @BIT(i32 0)
  %47 = call i32 @BIT(i32 1)
  %48 = or i32 %46, %47
  %49 = xor i32 %48, -1
  %50 = load %struct.etmv4_config*, %struct.etmv4_config** %13, align 8
  %51 = getelementptr inbounds %struct.etmv4_config, %struct.etmv4_config* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = load i64, i64* %10, align 8
  %54 = getelementptr inbounds i32, i32* %52, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = and i32 %55, %49
  store i32 %56, i32* %54, align 4
  br label %57

57:                                               ; preds = %45, %35
  %58 = load %struct.etmv4_drvdata*, %struct.etmv4_drvdata** %12, align 8
  %59 = getelementptr inbounds %struct.etmv4_drvdata, %struct.etmv4_drvdata* %58, i32 0, i32 0
  %60 = call i32 @spin_unlock(i32* %59)
  %61 = load i64, i64* %9, align 8
  store i64 %61, i64* %5, align 8
  br label %62

62:                                               ; preds = %57, %32, %24
  %63 = load i64, i64* %5, align 8
  ret i64 %63
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.etmv4_drvdata* @dev_get_drvdata(i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @sscanf(i8*, i8*, i8*) #2

declare dso_local i32 @spin_lock(i32*) #2

declare dso_local i32 @strcmp(i8*, i8*) #2

declare dso_local i32 @BIT(i32) #2

declare dso_local i32 @spin_unlock(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
