; ModuleID = '/home/carl/AnghaBench/linux/drivers/hsi/clients/extr_cmt_speech.c_cs_hsi_peek_on_data_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hsi/clients/extr_cmt_speech.c_cs_hsi_peek_on_data_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hsi_msg = type { i64, i32, %struct.TYPE_3__, %struct.cs_hsi_iface* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.cs_hsi_iface = type { i64, i32, i64, i64, %struct.TYPE_4__*, i32, i64*, i64, i32 }
%struct.TYPE_4__ = type { i32 }

@HSI_STATUS_ERROR = common dso_local global i64 0, align 8
@CS_STATE_CONFIGURED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"Data received in invalid state\0A\00", align 1
@SSI_CHANNEL_STATE_POLL = common dso_local global i32 0, align 4
@SSI_CHANNEL_STATE_READING = common dso_local global i32 0, align 4
@cs_hsi_read_on_data_complete = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hsi_msg*)* @cs_hsi_peek_on_data_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cs_hsi_peek_on_data_complete(%struct.hsi_msg* %0) #0 {
  %2 = alloca %struct.hsi_msg*, align 8
  %3 = alloca %struct.cs_hsi_iface*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store %struct.hsi_msg* %0, %struct.hsi_msg** %2, align 8
  %6 = load %struct.hsi_msg*, %struct.hsi_msg** %2, align 8
  %7 = getelementptr inbounds %struct.hsi_msg, %struct.hsi_msg* %6, i32 0, i32 3
  %8 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %7, align 8
  store %struct.cs_hsi_iface* %8, %struct.cs_hsi_iface** %3, align 8
  %9 = load %struct.hsi_msg*, %struct.hsi_msg** %2, align 8
  %10 = getelementptr inbounds %struct.hsi_msg, %struct.hsi_msg* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @HSI_STATUS_ERROR, align 8
  %13 = icmp eq i64 %11, %12
  %14 = zext i1 %13 to i32
  %15 = call i64 @unlikely(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %1
  %18 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %3, align 8
  %19 = load %struct.hsi_msg*, %struct.hsi_msg** %2, align 8
  %20 = call i32 @cs_hsi_data_read_error(%struct.cs_hsi_iface* %18, %struct.hsi_msg* %19)
  br label %109

21:                                               ; preds = %1
  %22 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %3, align 8
  %23 = getelementptr inbounds %struct.cs_hsi_iface, %struct.cs_hsi_iface* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @CS_STATE_CONFIGURED, align 8
  %26 = icmp ne i64 %24, %25
  %27 = zext i1 %26 to i32
  %28 = call i64 @unlikely(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %21
  %31 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %3, align 8
  %32 = getelementptr inbounds %struct.cs_hsi_iface, %struct.cs_hsi_iface* %31, i32 0, i32 4
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = call i32 @dev_err(i32* %34, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %36 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %3, align 8
  %37 = load %struct.hsi_msg*, %struct.hsi_msg** %2, align 8
  %38 = call i32 @cs_hsi_data_read_error(%struct.cs_hsi_iface* %36, %struct.hsi_msg* %37)
  br label %109

39:                                               ; preds = %21
  %40 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %3, align 8
  %41 = getelementptr inbounds %struct.cs_hsi_iface, %struct.cs_hsi_iface* %40, i32 0, i32 8
  %42 = call i32 @spin_lock(i32* %41)
  %43 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %3, align 8
  %44 = getelementptr inbounds %struct.cs_hsi_iface, %struct.cs_hsi_iface* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @SSI_CHANNEL_STATE_POLL, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  %49 = xor i1 %48, true
  %50 = zext i1 %49 to i32
  %51 = call i32 @WARN_ON(i32 %50)
  %52 = load i32, i32* @SSI_CHANNEL_STATE_POLL, align 4
  %53 = xor i32 %52, -1
  %54 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %3, align 8
  %55 = getelementptr inbounds %struct.cs_hsi_iface, %struct.cs_hsi_iface* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = and i32 %56, %53
  store i32 %57, i32* %55, align 8
  %58 = load i32, i32* @SSI_CHANNEL_STATE_READING, align 4
  %59 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %3, align 8
  %60 = getelementptr inbounds %struct.cs_hsi_iface, %struct.cs_hsi_iface* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = or i32 %61, %58
  store i32 %62, i32* %60, align 8
  %63 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %3, align 8
  %64 = getelementptr inbounds %struct.cs_hsi_iface, %struct.cs_hsi_iface* %63, i32 0, i32 8
  %65 = call i32 @spin_unlock(i32* %64)
  %66 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %3, align 8
  %67 = getelementptr inbounds %struct.cs_hsi_iface, %struct.cs_hsi_iface* %66, i32 0, i32 7
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %3, align 8
  %70 = getelementptr inbounds %struct.cs_hsi_iface, %struct.cs_hsi_iface* %69, i32 0, i32 6
  %71 = load i64*, i64** %70, align 8
  %72 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %3, align 8
  %73 = getelementptr inbounds %struct.cs_hsi_iface, %struct.cs_hsi_iface* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %3, align 8
  %76 = getelementptr inbounds %struct.cs_hsi_iface, %struct.cs_hsi_iface* %75, i32 0, i32 3
  %77 = load i64, i64* %76, align 8
  %78 = urem i64 %74, %77
  %79 = getelementptr inbounds i64, i64* %71, i64 %78
  %80 = load i64, i64* %79, align 8
  %81 = add nsw i64 %68, %80
  %82 = inttoptr i64 %81 to i32*
  store i32* %82, i32** %4, align 8
  %83 = load %struct.hsi_msg*, %struct.hsi_msg** %2, align 8
  %84 = getelementptr inbounds %struct.hsi_msg, %struct.hsi_msg* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load i32*, i32** %4, align 8
  %88 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %3, align 8
  %89 = getelementptr inbounds %struct.cs_hsi_iface, %struct.cs_hsi_iface* %88, i32 0, i32 5
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @sg_init_one(i32 %86, i32* %87, i32 %90)
  %92 = load %struct.hsi_msg*, %struct.hsi_msg** %2, align 8
  %93 = getelementptr inbounds %struct.hsi_msg, %struct.hsi_msg* %92, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 0
  store i32 1, i32* %94, align 4
  %95 = load i32, i32* @cs_hsi_read_on_data_complete, align 4
  %96 = load %struct.hsi_msg*, %struct.hsi_msg** %2, align 8
  %97 = getelementptr inbounds %struct.hsi_msg, %struct.hsi_msg* %96, i32 0, i32 1
  store i32 %95, i32* %97, align 8
  %98 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %3, align 8
  %99 = getelementptr inbounds %struct.cs_hsi_iface, %struct.cs_hsi_iface* %98, i32 0, i32 4
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %99, align 8
  %101 = load %struct.hsi_msg*, %struct.hsi_msg** %2, align 8
  %102 = call i32 @hsi_async_read(%struct.TYPE_4__* %100, %struct.hsi_msg* %101)
  store i32 %102, i32* %5, align 4
  %103 = load i32, i32* %5, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %39
  %106 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %3, align 8
  %107 = load %struct.hsi_msg*, %struct.hsi_msg** %2, align 8
  %108 = call i32 @cs_hsi_data_read_error(%struct.cs_hsi_iface* %106, %struct.hsi_msg* %107)
  br label %109

109:                                              ; preds = %17, %30, %105, %39
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @cs_hsi_data_read_error(%struct.cs_hsi_iface*, %struct.hsi_msg*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @sg_init_one(i32, i32*, i32) #1

declare dso_local i32 @hsi_async_read(%struct.TYPE_4__*, %struct.hsi_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
