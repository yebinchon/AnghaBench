; ModuleID = '/home/carl/AnghaBench/linux/drivers/hsi/clients/extr_cmt_speech.c_cs_hsi_read_on_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hsi/clients/extr_cmt_speech.c_cs_hsi_read_on_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cs_hsi_iface = type { i32, %struct.TYPE_4__*, i64, %struct.hsi_msg*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.hsi_msg = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32 }

@SSI_CHANNEL_STATE_READING = common dso_local global i32 0, align 4
@SSI_CHANNEL_STATE_POLL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Data read already pending (%u)\0A\00", align 1
@cs_hsi_peek_on_data_complete = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cs_hsi_iface*)* @cs_hsi_read_on_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cs_hsi_read_on_data(%struct.cs_hsi_iface* %0) #0 {
  %2 = alloca %struct.cs_hsi_iface*, align 8
  %3 = alloca %struct.hsi_msg*, align 8
  %4 = alloca i32, align 4
  store %struct.cs_hsi_iface* %0, %struct.cs_hsi_iface** %2, align 8
  %5 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %2, align 8
  %6 = getelementptr inbounds %struct.cs_hsi_iface, %struct.cs_hsi_iface* %5, i32 0, i32 4
  %7 = call i32 @spin_lock(i32* %6)
  %8 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %2, align 8
  %9 = getelementptr inbounds %struct.cs_hsi_iface, %struct.cs_hsi_iface* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @SSI_CHANNEL_STATE_READING, align 4
  %12 = load i32, i32* @SSI_CHANNEL_STATE_POLL, align 4
  %13 = or i32 %11, %12
  %14 = and i32 %10, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %28

16:                                               ; preds = %1
  %17 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %2, align 8
  %18 = getelementptr inbounds %struct.cs_hsi_iface, %struct.cs_hsi_iface* %17, i32 0, i32 1
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %2, align 8
  %22 = getelementptr inbounds %struct.cs_hsi_iface, %struct.cs_hsi_iface* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @dev_dbg(i32* %20, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %2, align 8
  %26 = getelementptr inbounds %struct.cs_hsi_iface, %struct.cs_hsi_iface* %25, i32 0, i32 4
  %27 = call i32 @spin_unlock(i32* %26)
  br label %66

28:                                               ; preds = %1
  %29 = load i32, i32* @SSI_CHANNEL_STATE_POLL, align 4
  %30 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %2, align 8
  %31 = getelementptr inbounds %struct.cs_hsi_iface, %struct.cs_hsi_iface* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = or i32 %32, %29
  store i32 %33, i32* %31, align 8
  %34 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %2, align 8
  %35 = getelementptr inbounds %struct.cs_hsi_iface, %struct.cs_hsi_iface* %34, i32 0, i32 4
  %36 = call i32 @spin_unlock(i32* %35)
  %37 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %2, align 8
  %38 = getelementptr inbounds %struct.cs_hsi_iface, %struct.cs_hsi_iface* %37, i32 0, i32 3
  %39 = load %struct.hsi_msg*, %struct.hsi_msg** %38, align 8
  store %struct.hsi_msg* %39, %struct.hsi_msg** %3, align 8
  %40 = load %struct.hsi_msg*, %struct.hsi_msg** %3, align 8
  %41 = getelementptr inbounds %struct.hsi_msg, %struct.hsi_msg* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %2, align 8
  %45 = getelementptr inbounds %struct.cs_hsi_iface, %struct.cs_hsi_iface* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = inttoptr i64 %46 to i8*
  %48 = call i32 @sg_init_one(i32 %43, i8* %47, i32 0)
  %49 = load %struct.hsi_msg*, %struct.hsi_msg** %3, align 8
  %50 = getelementptr inbounds %struct.hsi_msg, %struct.hsi_msg* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  store i64 0, i64* %51, align 8
  %52 = load i32, i32* @cs_hsi_peek_on_data_complete, align 4
  %53 = load %struct.hsi_msg*, %struct.hsi_msg** %3, align 8
  %54 = getelementptr inbounds %struct.hsi_msg, %struct.hsi_msg* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  %55 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %2, align 8
  %56 = getelementptr inbounds %struct.cs_hsi_iface, %struct.cs_hsi_iface* %55, i32 0, i32 1
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = load %struct.hsi_msg*, %struct.hsi_msg** %3, align 8
  %59 = call i32 @hsi_async_read(%struct.TYPE_4__* %57, %struct.hsi_msg* %58)
  store i32 %59, i32* %4, align 4
  %60 = load i32, i32* %4, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %28
  %63 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %2, align 8
  %64 = load %struct.hsi_msg*, %struct.hsi_msg** %3, align 8
  %65 = call i32 @cs_hsi_data_read_error(%struct.cs_hsi_iface* %63, %struct.hsi_msg* %64)
  br label %66

66:                                               ; preds = %16, %62, %28
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @sg_init_one(i32, i8*, i32) #1

declare dso_local i32 @hsi_async_read(%struct.TYPE_4__*, %struct.hsi_msg*) #1

declare dso_local i32 @cs_hsi_data_read_error(%struct.cs_hsi_iface*, %struct.hsi_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
