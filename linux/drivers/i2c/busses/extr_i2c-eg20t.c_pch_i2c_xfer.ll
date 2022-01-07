; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-eg20t.c_pch_i2c_xfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-eg20t.c_pch_i2c_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { %struct.i2c_algo_pch_data* }
%struct.i2c_algo_pch_data = type { i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.i2c_msg = type { i64 }

@pch_mutex = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [47 x i8] c"adap->p_adapter_info->pch_i2c_suspended is %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"After invoking I2C_MODE_SEL :flag= 0x%x\0A\00", align 1
@I2C_M_RD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.i2c_adapter*, %struct.i2c_msg*, i64)* @pch_i2c_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @pch_i2c_xfer(%struct.i2c_adapter* %0, %struct.i2c_msg* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.i2c_adapter*, align 8
  %6 = alloca %struct.i2c_msg*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.i2c_msg*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.i2c_algo_pch_data*, align 8
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %5, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 0, i64* %9, align 8
  %13 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %14 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %13, i32 0, i32 0
  %15 = load %struct.i2c_algo_pch_data*, %struct.i2c_algo_pch_data** %14, align 8
  store %struct.i2c_algo_pch_data* %15, %struct.i2c_algo_pch_data** %12, align 8
  %16 = call i64 @mutex_lock_interruptible(i32* @pch_mutex)
  store i64 %16, i64* %11, align 8
  %17 = load i64, i64* %11, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i64, i64* %11, align 8
  store i64 %20, i64* %4, align 8
  br label %112

21:                                               ; preds = %3
  %22 = load %struct.i2c_algo_pch_data*, %struct.i2c_algo_pch_data** %12, align 8
  %23 = getelementptr inbounds %struct.i2c_algo_pch_data, %struct.i2c_algo_pch_data* %22, i32 0, i32 2
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %21
  %29 = call i32 @mutex_unlock(i32* @pch_mutex)
  %30 = load i64, i64* @EBUSY, align 8
  %31 = sub nsw i64 0, %30
  store i64 %31, i64* %4, align 8
  br label %112

32:                                               ; preds = %21
  %33 = load %struct.i2c_algo_pch_data*, %struct.i2c_algo_pch_data** %12, align 8
  %34 = load %struct.i2c_algo_pch_data*, %struct.i2c_algo_pch_data** %12, align 8
  %35 = getelementptr inbounds %struct.i2c_algo_pch_data, %struct.i2c_algo_pch_data* %34, i32 0, i32 2
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @pch_dbg(%struct.i2c_algo_pch_data* %33, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i64 %38)
  %40 = load %struct.i2c_algo_pch_data*, %struct.i2c_algo_pch_data** %12, align 8
  %41 = getelementptr inbounds %struct.i2c_algo_pch_data, %struct.i2c_algo_pch_data* %40, i32 0, i32 0
  store i32 1, i32* %41, align 8
  store i64 0, i64* %9, align 8
  br label %42

42:                                               ; preds = %97, %32
  %43 = load i64, i64* %9, align 8
  %44 = load i64, i64* %7, align 8
  %45 = icmp slt i64 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %42
  %47 = load i64, i64* %11, align 8
  %48 = icmp sge i64 %47, 0
  br label %49

49:                                               ; preds = %46, %42
  %50 = phi i1 [ false, %42 ], [ %48, %46 ]
  br i1 %50, label %51, label %100

51:                                               ; preds = %49
  %52 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %53 = load i64, i64* %9, align 8
  %54 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %52, i64 %53
  store %struct.i2c_msg* %54, %struct.i2c_msg** %8, align 8
  %55 = load %struct.i2c_algo_pch_data*, %struct.i2c_algo_pch_data** %12, align 8
  %56 = getelementptr inbounds %struct.i2c_algo_pch_data, %struct.i2c_algo_pch_data* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.i2c_msg*, %struct.i2c_msg** %8, align 8
  %59 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = or i64 %60, %57
  store i64 %61, i64* %59, align 8
  %62 = load %struct.i2c_msg*, %struct.i2c_msg** %8, align 8
  %63 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  store i64 %64, i64* %10, align 8
  %65 = load %struct.i2c_algo_pch_data*, %struct.i2c_algo_pch_data** %12, align 8
  %66 = load i64, i64* %10, align 8
  %67 = call i32 @pch_dbg(%struct.i2c_algo_pch_data* %65, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i64 %66)
  %68 = load i64, i64* %10, align 8
  %69 = load i64, i64* @I2C_M_RD, align 8
  %70 = and i64 %68, %69
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %84

72:                                               ; preds = %51
  %73 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %74 = load %struct.i2c_msg*, %struct.i2c_msg** %8, align 8
  %75 = load i64, i64* %9, align 8
  %76 = add nsw i64 %75, 1
  %77 = load i64, i64* %7, align 8
  %78 = icmp eq i64 %76, %77
  %79 = zext i1 %78 to i32
  %80 = load i64, i64* %9, align 8
  %81 = icmp eq i64 %80, 0
  %82 = zext i1 %81 to i32
  %83 = call i64 @pch_i2c_readbytes(%struct.i2c_adapter* %73, %struct.i2c_msg* %74, i32 %79, i32 %82)
  store i64 %83, i64* %11, align 8
  br label %96

84:                                               ; preds = %51
  %85 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %86 = load %struct.i2c_msg*, %struct.i2c_msg** %8, align 8
  %87 = load i64, i64* %9, align 8
  %88 = add nsw i64 %87, 1
  %89 = load i64, i64* %7, align 8
  %90 = icmp eq i64 %88, %89
  %91 = zext i1 %90 to i32
  %92 = load i64, i64* %9, align 8
  %93 = icmp eq i64 %92, 0
  %94 = zext i1 %93 to i32
  %95 = call i64 @pch_i2c_writebytes(%struct.i2c_adapter* %85, %struct.i2c_msg* %86, i32 %91, i32 %94)
  store i64 %95, i64* %11, align 8
  br label %96

96:                                               ; preds = %84, %72
  br label %97

97:                                               ; preds = %96
  %98 = load i64, i64* %9, align 8
  %99 = add nsw i64 %98, 1
  store i64 %99, i64* %9, align 8
  br label %42

100:                                              ; preds = %49
  %101 = load %struct.i2c_algo_pch_data*, %struct.i2c_algo_pch_data** %12, align 8
  %102 = getelementptr inbounds %struct.i2c_algo_pch_data, %struct.i2c_algo_pch_data* %101, i32 0, i32 0
  store i32 0, i32* %102, align 8
  %103 = call i32 @mutex_unlock(i32* @pch_mutex)
  %104 = load i64, i64* %11, align 8
  %105 = icmp slt i64 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %100
  %107 = load i64, i64* %11, align 8
  br label %110

108:                                              ; preds = %100
  %109 = load i64, i64* %7, align 8
  br label %110

110:                                              ; preds = %108, %106
  %111 = phi i64 [ %107, %106 ], [ %109, %108 ]
  store i64 %111, i64* %4, align 8
  br label %112

112:                                              ; preds = %110, %28, %19
  %113 = load i64, i64* %4, align 8
  ret i64 %113
}

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @pch_dbg(%struct.i2c_algo_pch_data*, i8*, i64) #1

declare dso_local i64 @pch_i2c_readbytes(%struct.i2c_adapter*, %struct.i2c_msg*, i32, i32) #1

declare dso_local i64 @pch_i2c_writebytes(%struct.i2c_adapter*, %struct.i2c_msg*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
