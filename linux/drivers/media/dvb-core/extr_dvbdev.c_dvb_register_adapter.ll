; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-core/extr_dvbdev.c_dvb_register_adapter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-core/extr_dvbdev.c_dvb_register_adapter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_adapter = type { i32, i8*, i32, i32, i32, i32*, i64, %struct.device*, %struct.module*, i32 }
%struct.module = type { i32 }
%struct.device = type { i32 }

@dvbdev_register_lock = common dso_local global i32 0, align 4
@DVB_MAX_ADAPTERS = common dso_local global i32 0, align 4
@ENFILE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"DVB: registering new adapter (%s)\0A\00", align 1
@dvb_adapter_list = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dvb_register_adapter(%struct.dvb_adapter* %0, i8* %1, %struct.module* %2, %struct.device* %3, i16* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.dvb_adapter*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.module*, align 8
  %10 = alloca %struct.device*, align 8
  %11 = alloca i16*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.dvb_adapter* %0, %struct.dvb_adapter** %7, align 8
  store i8* %1, i8** %8, align 8
  store %struct.module* %2, %struct.module** %9, align 8
  store %struct.device* %3, %struct.device** %10, align 8
  store i16* %4, i16** %11, align 8
  %14 = call i32 @mutex_lock(i32* @dvbdev_register_lock)
  store i32 0, i32* %12, align 4
  br label %15

15:                                               ; preds = %41, %5
  %16 = load i32, i32* %12, align 4
  %17 = load i32, i32* @DVB_MAX_ADAPTERS, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %44

19:                                               ; preds = %15
  %20 = load i16*, i16** %11, align 8
  %21 = load i32, i32* %12, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i16, i16* %20, i64 %22
  %24 = load i16, i16* %23, align 2
  %25 = sext i16 %24 to i32
  store i32 %25, i32* %13, align 4
  %26 = load i32, i32* %13, align 4
  %27 = icmp sge i32 %26, 0
  br i1 %27, label %28, label %38

28:                                               ; preds = %19
  %29 = load i32, i32* %13, align 4
  %30 = load i32, i32* @DVB_MAX_ADAPTERS, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %38

32:                                               ; preds = %28
  %33 = load i32, i32* %13, align 4
  %34 = call i64 @dvbdev_check_free_adapter_num(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  br label %44

37:                                               ; preds = %32
  br label %40

38:                                               ; preds = %28, %19
  %39 = call i32 (...) @dvbdev_get_free_adapter_num()
  store i32 %39, i32* %13, align 4
  br label %44

40:                                               ; preds = %37
  store i32 -1, i32* %13, align 4
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %12, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %12, align 4
  br label %15

44:                                               ; preds = %38, %36, %15
  %45 = load i32, i32* %13, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %44
  %48 = call i32 @mutex_unlock(i32* @dvbdev_register_lock)
  %49 = load i32, i32* @ENFILE, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %6, align 4
  br label %83

51:                                               ; preds = %44
  %52 = load %struct.dvb_adapter*, %struct.dvb_adapter** %7, align 8
  %53 = call i32 @memset(%struct.dvb_adapter* %52, i32 0, i32 72)
  %54 = load %struct.dvb_adapter*, %struct.dvb_adapter** %7, align 8
  %55 = getelementptr inbounds %struct.dvb_adapter, %struct.dvb_adapter* %54, i32 0, i32 9
  %56 = call i32 @INIT_LIST_HEAD(i32* %55)
  %57 = load i8*, i8** %8, align 8
  %58 = call i32 @pr_info(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i8* %57)
  %59 = load i32, i32* %13, align 4
  %60 = load %struct.dvb_adapter*, %struct.dvb_adapter** %7, align 8
  %61 = getelementptr inbounds %struct.dvb_adapter, %struct.dvb_adapter* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 8
  %62 = load i8*, i8** %8, align 8
  %63 = load %struct.dvb_adapter*, %struct.dvb_adapter** %7, align 8
  %64 = getelementptr inbounds %struct.dvb_adapter, %struct.dvb_adapter* %63, i32 0, i32 1
  store i8* %62, i8** %64, align 8
  %65 = load %struct.module*, %struct.module** %9, align 8
  %66 = load %struct.dvb_adapter*, %struct.dvb_adapter** %7, align 8
  %67 = getelementptr inbounds %struct.dvb_adapter, %struct.dvb_adapter* %66, i32 0, i32 8
  store %struct.module* %65, %struct.module** %67, align 8
  %68 = load %struct.device*, %struct.device** %10, align 8
  %69 = load %struct.dvb_adapter*, %struct.dvb_adapter** %7, align 8
  %70 = getelementptr inbounds %struct.dvb_adapter, %struct.dvb_adapter* %69, i32 0, i32 7
  store %struct.device* %68, %struct.device** %70, align 8
  %71 = load %struct.dvb_adapter*, %struct.dvb_adapter** %7, align 8
  %72 = getelementptr inbounds %struct.dvb_adapter, %struct.dvb_adapter* %71, i32 0, i32 6
  store i64 0, i64* %72, align 8
  %73 = load %struct.dvb_adapter*, %struct.dvb_adapter** %7, align 8
  %74 = getelementptr inbounds %struct.dvb_adapter, %struct.dvb_adapter* %73, i32 0, i32 5
  store i32* null, i32** %74, align 8
  %75 = load %struct.dvb_adapter*, %struct.dvb_adapter** %7, align 8
  %76 = getelementptr inbounds %struct.dvb_adapter, %struct.dvb_adapter* %75, i32 0, i32 4
  %77 = call i32 @mutex_init(i32* %76)
  %78 = load %struct.dvb_adapter*, %struct.dvb_adapter** %7, align 8
  %79 = getelementptr inbounds %struct.dvb_adapter, %struct.dvb_adapter* %78, i32 0, i32 2
  %80 = call i32 @list_add_tail(i32* %79, i32* @dvb_adapter_list)
  %81 = call i32 @mutex_unlock(i32* @dvbdev_register_lock)
  %82 = load i32, i32* %13, align 4
  store i32 %82, i32* %6, align 4
  br label %83

83:                                               ; preds = %51, %47
  %84 = load i32, i32* %6, align 4
  ret i32 %84
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @dvbdev_check_free_adapter_num(i32) #1

declare dso_local i32 @dvbdev_get_free_adapter_num(...) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @memset(%struct.dvb_adapter*, i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @pr_info(i8*, i8*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
