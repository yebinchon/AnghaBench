; ModuleID = '/home/carl/AnghaBench/linux/drivers/ide/extr_ide-legacy.c_ide_legacy_device_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ide/extr_ide-legacy.c_ide_legacy_device_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ide_port_info = type { i32 }
%struct.ide_hw = type { i32 }

@IDE_HFLAG_QD_2ND_PORT = common dso_local global i32 0, align 4
@IDE_HFLAG_SINGLE = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ide_legacy_device_add(%struct.ide_port_info* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ide_port_info*, align 8
  %5 = alloca i64, align 8
  %6 = alloca [2 x %struct.ide_hw], align 4
  %7 = alloca [2 x %struct.ide_hw*], align 16
  store %struct.ide_port_info* %0, %struct.ide_port_info** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = bitcast [2 x %struct.ide_hw*]* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %8, i8 0, i64 16, i1 false)
  %9 = bitcast [2 x %struct.ide_hw]* %6 to %struct.ide_hw**
  %10 = call i32 @memset(%struct.ide_hw** %9, i32 0, i32 8)
  %11 = load %struct.ide_port_info*, %struct.ide_port_info** %4, align 8
  %12 = getelementptr inbounds %struct.ide_port_info, %struct.ide_port_info* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @IDE_HFLAG_QD_2ND_PORT, align 4
  %15 = and i32 %13, %14
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %2
  %18 = getelementptr inbounds [2 x %struct.ide_hw*], [2 x %struct.ide_hw*]* %7, i64 0, i64 0
  %19 = getelementptr inbounds [2 x %struct.ide_hw], [2 x %struct.ide_hw]* %6, i64 0, i64 0
  %20 = load %struct.ide_port_info*, %struct.ide_port_info** %4, align 8
  %21 = load i64, i64* %5, align 8
  %22 = call i32 @ide_legacy_init_one(%struct.ide_hw** %18, %struct.ide_hw* %19, i32 0, %struct.ide_port_info* %20, i64 %21)
  br label %23

23:                                               ; preds = %17, %2
  %24 = getelementptr inbounds [2 x %struct.ide_hw*], [2 x %struct.ide_hw*]* %7, i64 0, i64 0
  %25 = getelementptr inbounds [2 x %struct.ide_hw], [2 x %struct.ide_hw]* %6, i64 0, i64 1
  %26 = load %struct.ide_port_info*, %struct.ide_port_info** %4, align 8
  %27 = load i64, i64* %5, align 8
  %28 = call i32 @ide_legacy_init_one(%struct.ide_hw** %24, %struct.ide_hw* %25, i32 1, %struct.ide_port_info* %26, i64 %27)
  %29 = getelementptr inbounds [2 x %struct.ide_hw*], [2 x %struct.ide_hw*]* %7, i64 0, i64 0
  %30 = load %struct.ide_hw*, %struct.ide_hw** %29, align 16
  %31 = icmp eq %struct.ide_hw* %30, null
  br i1 %31, label %32, label %46

32:                                               ; preds = %23
  %33 = getelementptr inbounds [2 x %struct.ide_hw*], [2 x %struct.ide_hw*]* %7, i64 0, i64 1
  %34 = load %struct.ide_hw*, %struct.ide_hw** %33, align 8
  %35 = icmp eq %struct.ide_hw* %34, null
  br i1 %35, label %36, label %46

36:                                               ; preds = %32
  %37 = load %struct.ide_port_info*, %struct.ide_port_info** %4, align 8
  %38 = getelementptr inbounds %struct.ide_port_info, %struct.ide_port_info* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @IDE_HFLAG_SINGLE, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %36
  %44 = load i32, i32* @ENOENT, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %50

46:                                               ; preds = %36, %32, %23
  %47 = load %struct.ide_port_info*, %struct.ide_port_info** %4, align 8
  %48 = getelementptr inbounds [2 x %struct.ide_hw*], [2 x %struct.ide_hw*]* %7, i64 0, i64 0
  %49 = call i32 @ide_host_add(%struct.ide_port_info* %47, %struct.ide_hw** %48, i32 2, i32* null)
  store i32 %49, i32* %3, align 4
  br label %50

50:                                               ; preds = %46, %43
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @memset(%struct.ide_hw**, i32, i32) #2

declare dso_local i32 @ide_legacy_init_one(%struct.ide_hw**, %struct.ide_hw*, i32, %struct.ide_port_info*, i64) #2

declare dso_local i32 @ide_host_add(%struct.ide_port_info*, %struct.ide_hw**, i32, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
