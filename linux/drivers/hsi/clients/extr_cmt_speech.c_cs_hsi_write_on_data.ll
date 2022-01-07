; ModuleID = '/home/carl/AnghaBench/linux/drivers/hsi/clients/extr_cmt_speech.c_cs_hsi_write_on_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hsi/clients/extr_cmt_speech.c_cs_hsi_write_on_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cs_hsi_iface = type { i64, i32, i32, %struct.hsi_msg*, i32, %struct.TYPE_4__*, i32, i64*, i64 }
%struct.hsi_msg = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@CS_STATE_CONFIGURED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"Not configured, aborting\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@SSI_CHANNEL_STATE_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"HSI error, aborting\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@SSI_CHANNEL_STATE_WRITING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"Write pending on data channel.\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@cs_hsi_write_on_data_complete = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cs_hsi_iface*, i32)* @cs_hsi_write_on_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs_hsi_write_on_data(%struct.cs_hsi_iface* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cs_hsi_iface*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.hsi_msg*, align 8
  %8 = alloca i32, align 4
  store %struct.cs_hsi_iface* %0, %struct.cs_hsi_iface** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %4, align 8
  %10 = getelementptr inbounds %struct.cs_hsi_iface, %struct.cs_hsi_iface* %9, i32 0, i32 4
  %11 = call i32 @spin_lock(i32* %10)
  %12 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %4, align 8
  %13 = getelementptr inbounds %struct.cs_hsi_iface, %struct.cs_hsi_iface* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @CS_STATE_CONFIGURED, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %25

17:                                               ; preds = %2
  %18 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %4, align 8
  %19 = getelementptr inbounds %struct.cs_hsi_iface, %struct.cs_hsi_iface* %18, i32 0, i32 5
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = call i32 @dev_err(i32* %21, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %8, align 4
  br label %109

25:                                               ; preds = %2
  %26 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %4, align 8
  %27 = getelementptr inbounds %struct.cs_hsi_iface, %struct.cs_hsi_iface* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @SSI_CHANNEL_STATE_ERROR, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %25
  %33 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %4, align 8
  %34 = getelementptr inbounds %struct.cs_hsi_iface, %struct.cs_hsi_iface* %33, i32 0, i32 5
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = call i32 @dev_err(i32* %36, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %38 = load i32, i32* @EIO, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %8, align 4
  br label %109

40:                                               ; preds = %25
  %41 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %4, align 8
  %42 = getelementptr inbounds %struct.cs_hsi_iface, %struct.cs_hsi_iface* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @SSI_CHANNEL_STATE_WRITING, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %40
  %48 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %4, align 8
  %49 = getelementptr inbounds %struct.cs_hsi_iface, %struct.cs_hsi_iface* %48, i32 0, i32 5
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = call i32 @dev_err(i32* %51, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %53 = load i32, i32* @EBUSY, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %8, align 4
  br label %109

55:                                               ; preds = %40
  %56 = load i32, i32* @SSI_CHANNEL_STATE_WRITING, align 4
  %57 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %4, align 8
  %58 = getelementptr inbounds %struct.cs_hsi_iface, %struct.cs_hsi_iface* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = or i32 %59, %56
  store i32 %60, i32* %58, align 8
  %61 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %4, align 8
  %62 = getelementptr inbounds %struct.cs_hsi_iface, %struct.cs_hsi_iface* %61, i32 0, i32 4
  %63 = call i32 @spin_unlock(i32* %62)
  %64 = load i32, i32* %5, align 4
  %65 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %4, align 8
  %66 = getelementptr inbounds %struct.cs_hsi_iface, %struct.cs_hsi_iface* %65, i32 0, i32 2
  store i32 %64, i32* %66, align 4
  %67 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %4, align 8
  %68 = getelementptr inbounds %struct.cs_hsi_iface, %struct.cs_hsi_iface* %67, i32 0, i32 8
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %4, align 8
  %71 = getelementptr inbounds %struct.cs_hsi_iface, %struct.cs_hsi_iface* %70, i32 0, i32 7
  %72 = load i64*, i64** %71, align 8
  %73 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %4, align 8
  %74 = getelementptr inbounds %struct.cs_hsi_iface, %struct.cs_hsi_iface* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds i64, i64* %72, i64 %76
  %78 = load i64, i64* %77, align 8
  %79 = add nsw i64 %69, %78
  %80 = inttoptr i64 %79 to i32*
  store i32* %80, i32** %6, align 8
  %81 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %4, align 8
  %82 = getelementptr inbounds %struct.cs_hsi_iface, %struct.cs_hsi_iface* %81, i32 0, i32 3
  %83 = load %struct.hsi_msg*, %struct.hsi_msg** %82, align 8
  store %struct.hsi_msg* %83, %struct.hsi_msg** %7, align 8
  %84 = load %struct.hsi_msg*, %struct.hsi_msg** %7, align 8
  %85 = getelementptr inbounds %struct.hsi_msg, %struct.hsi_msg* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32*, i32** %6, align 8
  %89 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %4, align 8
  %90 = getelementptr inbounds %struct.cs_hsi_iface, %struct.cs_hsi_iface* %89, i32 0, i32 6
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @sg_init_one(i32 %87, i32* %88, i32 %91)
  %93 = load i32, i32* @cs_hsi_write_on_data_complete, align 4
  %94 = load %struct.hsi_msg*, %struct.hsi_msg** %7, align 8
  %95 = getelementptr inbounds %struct.hsi_msg, %struct.hsi_msg* %94, i32 0, i32 0
  store i32 %93, i32* %95, align 4
  %96 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %4, align 8
  %97 = getelementptr inbounds %struct.cs_hsi_iface, %struct.cs_hsi_iface* %96, i32 0, i32 5
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %97, align 8
  %99 = load %struct.hsi_msg*, %struct.hsi_msg** %7, align 8
  %100 = call i32 @hsi_async_write(%struct.TYPE_4__* %98, %struct.hsi_msg* %99)
  store i32 %100, i32* %8, align 4
  %101 = load i32, i32* %8, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %55
  %104 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %4, align 8
  %105 = load %struct.hsi_msg*, %struct.hsi_msg** %7, align 8
  %106 = call i32 @cs_hsi_data_write_error(%struct.cs_hsi_iface* %104, %struct.hsi_msg* %105)
  br label %107

107:                                              ; preds = %103, %55
  %108 = load i32, i32* %8, align 4
  store i32 %108, i32* %3, align 4
  br label %125

109:                                              ; preds = %47, %32, %17
  %110 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %4, align 8
  %111 = getelementptr inbounds %struct.cs_hsi_iface, %struct.cs_hsi_iface* %110, i32 0, i32 4
  %112 = call i32 @spin_unlock(i32* %111)
  %113 = load i32, i32* %8, align 4
  %114 = load i32, i32* @EIO, align 4
  %115 = sub nsw i32 0, %114
  %116 = icmp eq i32 %113, %115
  br i1 %116, label %117, label %123

117:                                              ; preds = %109
  %118 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %4, align 8
  %119 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %4, align 8
  %120 = getelementptr inbounds %struct.cs_hsi_iface, %struct.cs_hsi_iface* %119, i32 0, i32 3
  %121 = load %struct.hsi_msg*, %struct.hsi_msg** %120, align 8
  %122 = call i32 @cs_hsi_data_write_error(%struct.cs_hsi_iface* %118, %struct.hsi_msg* %121)
  br label %123

123:                                              ; preds = %117, %109
  %124 = load i32, i32* %8, align 4
  store i32 %124, i32* %3, align 4
  br label %125

125:                                              ; preds = %123, %107
  %126 = load i32, i32* %3, align 4
  ret i32 %126
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @sg_init_one(i32, i32*, i32) #1

declare dso_local i32 @hsi_async_write(%struct.TYPE_4__*, %struct.hsi_msg*) #1

declare dso_local i32 @cs_hsi_data_write_error(%struct.cs_hsi_iface*, %struct.hsi_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
