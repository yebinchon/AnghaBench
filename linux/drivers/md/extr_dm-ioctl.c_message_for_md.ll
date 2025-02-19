; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-ioctl.c_message_for_md.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-ioctl.c_message_for_md.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mapped_device = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"@cancel_deferred_remove\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"Invalid arguments for @cancel_deferred_remove\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"Unsupported message sent to DM core: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mapped_device*, i32, i8**, i8*, i32)* @message_for_md to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @message_for_md(%struct.mapped_device* %0, i32 %1, i8** %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mapped_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.mapped_device* %0, %struct.mapped_device** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8** %2, i8*** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %13 = load i8**, i8*** %9, align 8
  %14 = load i8*, i8** %13, align 8
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp ne i32 %16, 64
  br i1 %17, label %18, label %19

18:                                               ; preds = %5
  store i32 2, i32* %6, align 4
  br label %53

19:                                               ; preds = %5
  %20 = load i8**, i8*** %9, align 8
  %21 = getelementptr inbounds i8*, i8** %20, i64 0
  %22 = load i8*, i8** %21, align 8
  %23 = call i32 @strcasecmp(i8* %22, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %35, label %25

25:                                               ; preds = %19
  %26 = load i32, i32* %8, align 4
  %27 = icmp ne i32 %26, 1
  br i1 %27, label %28, label %32

28:                                               ; preds = %25
  %29 = call i32 (i8*, ...) @DMERR(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %6, align 4
  br label %53

32:                                               ; preds = %25
  %33 = load %struct.mapped_device*, %struct.mapped_device** %7, align 8
  %34 = call i32 @dm_cancel_deferred_remove(%struct.mapped_device* %33)
  store i32 %34, i32* %6, align 4
  br label %53

35:                                               ; preds = %19
  %36 = load %struct.mapped_device*, %struct.mapped_device** %7, align 8
  %37 = load i32, i32* %8, align 4
  %38 = load i8**, i8*** %9, align 8
  %39 = load i8*, i8** %10, align 8
  %40 = load i32, i32* %11, align 4
  %41 = call i32 @dm_stats_message(%struct.mapped_device* %36, i32 %37, i8** %38, i8* %39, i32 %40)
  store i32 %41, i32* %12, align 4
  %42 = load i32, i32* %12, align 4
  %43 = icmp slt i32 %42, 2
  br i1 %43, label %44, label %46

44:                                               ; preds = %35
  %45 = load i32, i32* %12, align 4
  store i32 %45, i32* %6, align 4
  br label %53

46:                                               ; preds = %35
  %47 = load i8**, i8*** %9, align 8
  %48 = getelementptr inbounds i8*, i8** %47, i64 0
  %49 = load i8*, i8** %48, align 8
  %50 = call i32 (i8*, ...) @DMERR(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i8* %49)
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %6, align 4
  br label %53

53:                                               ; preds = %46, %44, %32, %28, %18
  %54 = load i32, i32* %6, align 4
  ret i32 %54
}

declare dso_local i32 @strcasecmp(i8*, i8*) #1

declare dso_local i32 @DMERR(i8*, ...) #1

declare dso_local i32 @dm_cancel_deferred_remove(%struct.mapped_device*) #1

declare dso_local i32 @dm_stats_message(%struct.mapped_device*, i32, i8**, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
