; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_zet6223.c_zet6223_query_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_zet6223.c_zet6223_query_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zet6223_ts = type { i32, i8*, i8*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@ZET6223_CMD_INFO_LENGTH = common dso_local global i32 0, align 4
@ZET6223_CMD_INFO = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"touchpanel info cmd failed: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"failed to retrieve touchpanel info: %d\0A\00", align 1
@ZET6223_MAX_FINGERS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [47 x i8] c"touchpanel reports %d fingers, limiting to %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zet6223_ts*)* @zet6223_query_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zet6223_query_device(%struct.zet6223_ts* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.zet6223_ts*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.zet6223_ts* %0, %struct.zet6223_ts** %3, align 8
  %10 = load i32, i32* @ZET6223_CMD_INFO_LENGTH, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %4, align 8
  %13 = alloca i32, i64 %11, align 16
  store i64 %11, i64* %5, align 8
  %14 = load i32, i32* @ZET6223_CMD_INFO, align 4
  store i32 %14, i32* %6, align 4
  %15 = load %struct.zet6223_ts*, %struct.zet6223_ts** %3, align 8
  %16 = getelementptr inbounds %struct.zet6223_ts, %struct.zet6223_ts* %15, i32 0, i32 3
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = call i32 @i2c_master_send(%struct.TYPE_3__* %17, i32* %6, i32 4)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = sext i32 %19 to i64
  %21 = icmp ne i64 %20, 4
  br i1 %21, label %22, label %39

22:                                               ; preds = %1
  %23 = load i32, i32* %7, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = load i32, i32* %7, align 4
  br label %30

27:                                               ; preds = %22
  %28 = load i32, i32* @EIO, align 4
  %29 = sub nsw i32 0, %28
  br label %30

30:                                               ; preds = %27, %25
  %31 = phi i32 [ %26, %25 ], [ %29, %27 ]
  store i32 %31, i32* %8, align 4
  %32 = load %struct.zet6223_ts*, %struct.zet6223_ts** %3, align 8
  %33 = getelementptr inbounds %struct.zet6223_ts, %struct.zet6223_ts* %32, i32 0, i32 3
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @dev_err(i32* %35, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* %8, align 4
  store i32 %38, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %100

39:                                               ; preds = %1
  %40 = load %struct.zet6223_ts*, %struct.zet6223_ts** %3, align 8
  %41 = getelementptr inbounds %struct.zet6223_ts, %struct.zet6223_ts* %40, i32 0, i32 3
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = mul nuw i64 4, %11
  %44 = trunc i64 %43 to i32
  %45 = call i32 @i2c_master_recv(%struct.TYPE_3__* %42, i32* %13, i32 %44)
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %7, align 4
  %47 = sext i32 %46 to i64
  %48 = mul nuw i64 4, %11
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %67

50:                                               ; preds = %39
  %51 = load i32, i32* %7, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %50
  %54 = load i32, i32* %7, align 4
  br label %58

55:                                               ; preds = %50
  %56 = load i32, i32* @EIO, align 4
  %57 = sub nsw i32 0, %56
  br label %58

58:                                               ; preds = %55, %53
  %59 = phi i32 [ %54, %53 ], [ %57, %55 ]
  store i32 %59, i32* %8, align 4
  %60 = load %struct.zet6223_ts*, %struct.zet6223_ts** %3, align 8
  %61 = getelementptr inbounds %struct.zet6223_ts, %struct.zet6223_ts* %60, i32 0, i32 3
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i32, i32* %8, align 4
  %65 = call i32 @dev_err(i32* %63, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %64)
  %66 = load i32, i32* %8, align 4
  store i32 %66, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %100

67:                                               ; preds = %39
  %68 = getelementptr inbounds i32, i32* %13, i64 15
  %69 = load i32, i32* %68, align 4
  %70 = and i32 %69, 127
  %71 = load %struct.zet6223_ts*, %struct.zet6223_ts** %3, align 8
  %72 = getelementptr inbounds %struct.zet6223_ts, %struct.zet6223_ts* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 8
  %73 = load %struct.zet6223_ts*, %struct.zet6223_ts** %3, align 8
  %74 = getelementptr inbounds %struct.zet6223_ts, %struct.zet6223_ts* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @ZET6223_MAX_FINGERS, align 4
  %77 = icmp sgt i32 %75, %76
  br i1 %77, label %78, label %91

78:                                               ; preds = %67
  %79 = load %struct.zet6223_ts*, %struct.zet6223_ts** %3, align 8
  %80 = getelementptr inbounds %struct.zet6223_ts, %struct.zet6223_ts* %79, i32 0, i32 3
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 0
  %83 = load %struct.zet6223_ts*, %struct.zet6223_ts** %3, align 8
  %84 = getelementptr inbounds %struct.zet6223_ts, %struct.zet6223_ts* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @ZET6223_MAX_FINGERS, align 4
  %87 = call i32 @dev_warn(i32* %82, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i32 %85, i32 %86)
  %88 = load i32, i32* @ZET6223_MAX_FINGERS, align 4
  %89 = load %struct.zet6223_ts*, %struct.zet6223_ts** %3, align 8
  %90 = getelementptr inbounds %struct.zet6223_ts, %struct.zet6223_ts* %89, i32 0, i32 0
  store i32 %88, i32* %90, align 8
  br label %91

91:                                               ; preds = %78, %67
  %92 = getelementptr inbounds i32, i32* %13, i64 8
  %93 = call i8* @get_unaligned_le16(i32* %92)
  %94 = load %struct.zet6223_ts*, %struct.zet6223_ts** %3, align 8
  %95 = getelementptr inbounds %struct.zet6223_ts, %struct.zet6223_ts* %94, i32 0, i32 2
  store i8* %93, i8** %95, align 8
  %96 = getelementptr inbounds i32, i32* %13, i64 10
  %97 = call i8* @get_unaligned_le16(i32* %96)
  %98 = load %struct.zet6223_ts*, %struct.zet6223_ts** %3, align 8
  %99 = getelementptr inbounds %struct.zet6223_ts, %struct.zet6223_ts* %98, i32 0, i32 1
  store i8* %97, i8** %99, align 8
  store i32 0, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %100

100:                                              ; preds = %91, %58, %30
  %101 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %101)
  %102 = load i32, i32* %2, align 4
  ret i32 %102
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @i2c_master_send(%struct.TYPE_3__*, i32*, i32) #2

declare dso_local i32 @dev_err(i32*, i8*, i32) #2

declare dso_local i32 @i2c_master_recv(%struct.TYPE_3__*, i32*, i32) #2

declare dso_local i32 @dev_warn(i32*, i8*, i32, i32) #2

declare dso_local i8* @get_unaligned_le16(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
