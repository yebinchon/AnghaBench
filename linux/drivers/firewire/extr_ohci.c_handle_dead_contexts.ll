; ModuleID = '/home/carl/AnghaBench/linux/drivers/firewire/extr_ohci.c_handle_dead_contexts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firewire/extr_ohci.c_handle_dead_contexts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_ohci = type { i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c"ATReq\00", align 1
@OHCI1394_AsReqTrContextBase = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"ATRsp\00", align 1
@OHCI1394_AsRspTrContextBase = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"ARReq\00", align 1
@OHCI1394_AsReqRcvContextBase = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"ARRsp\00", align 1
@OHCI1394_AsRspRcvContextBase = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"IT%u\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"IR%u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fw_ohci*)* @handle_dead_contexts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_dead_contexts(%struct.fw_ohci* %0) #0 {
  %2 = alloca %struct.fw_ohci*, align 8
  %3 = alloca i32, align 4
  %4 = alloca [8 x i8], align 1
  store %struct.fw_ohci* %0, %struct.fw_ohci** %2, align 8
  %5 = load %struct.fw_ohci*, %struct.fw_ohci** %2, align 8
  %6 = load i32, i32* @OHCI1394_AsReqTrContextBase, align 4
  %7 = call i32 @detect_dead_context(%struct.fw_ohci* %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %6)
  %8 = load %struct.fw_ohci*, %struct.fw_ohci** %2, align 8
  %9 = load i32, i32* @OHCI1394_AsRspTrContextBase, align 4
  %10 = call i32 @detect_dead_context(%struct.fw_ohci* %8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %9)
  %11 = load %struct.fw_ohci*, %struct.fw_ohci** %2, align 8
  %12 = load i32, i32* @OHCI1394_AsReqRcvContextBase, align 4
  %13 = call i32 @detect_dead_context(%struct.fw_ohci* %11, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %12)
  %14 = load %struct.fw_ohci*, %struct.fw_ohci** %2, align 8
  %15 = load i32, i32* @OHCI1394_AsRspRcvContextBase, align 4
  %16 = call i32 @detect_dead_context(%struct.fw_ohci* %14, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %15)
  store i32 0, i32* %3, align 4
  br label %17

17:                                               ; preds = %38, %1
  %18 = load i32, i32* %3, align 4
  %19 = icmp ult i32 %18, 32
  br i1 %19, label %20, label %41

20:                                               ; preds = %17
  %21 = load %struct.fw_ohci*, %struct.fw_ohci** %2, align 8
  %22 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %3, align 4
  %25 = shl i32 1, %24
  %26 = and i32 %23, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %20
  br label %38

29:                                               ; preds = %20
  %30 = getelementptr inbounds [8 x i8], [8 x i8]* %4, i64 0, i64 0
  %31 = load i32, i32* %3, align 4
  %32 = call i32 @sprintf(i8* %30, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 %31)
  %33 = load %struct.fw_ohci*, %struct.fw_ohci** %2, align 8
  %34 = getelementptr inbounds [8 x i8], [8 x i8]* %4, i64 0, i64 0
  %35 = load i32, i32* %3, align 4
  %36 = call i32 @OHCI1394_IsoXmitContextBase(i32 %35)
  %37 = call i32 @detect_dead_context(%struct.fw_ohci* %33, i8* %34, i32 %36)
  br label %38

38:                                               ; preds = %29, %28
  %39 = load i32, i32* %3, align 4
  %40 = add i32 %39, 1
  store i32 %40, i32* %3, align 4
  br label %17

41:                                               ; preds = %17
  store i32 0, i32* %3, align 4
  br label %42

42:                                               ; preds = %63, %41
  %43 = load i32, i32* %3, align 4
  %44 = icmp ult i32 %43, 32
  br i1 %44, label %45, label %66

45:                                               ; preds = %42
  %46 = load %struct.fw_ohci*, %struct.fw_ohci** %2, align 8
  %47 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %3, align 4
  %50 = shl i32 1, %49
  %51 = and i32 %48, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %45
  br label %63

54:                                               ; preds = %45
  %55 = getelementptr inbounds [8 x i8], [8 x i8]* %4, i64 0, i64 0
  %56 = load i32, i32* %3, align 4
  %57 = call i32 @sprintf(i8* %55, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %56)
  %58 = load %struct.fw_ohci*, %struct.fw_ohci** %2, align 8
  %59 = getelementptr inbounds [8 x i8], [8 x i8]* %4, i64 0, i64 0
  %60 = load i32, i32* %3, align 4
  %61 = call i32 @OHCI1394_IsoRcvContextBase(i32 %60)
  %62 = call i32 @detect_dead_context(%struct.fw_ohci* %58, i8* %59, i32 %61)
  br label %63

63:                                               ; preds = %54, %53
  %64 = load i32, i32* %3, align 4
  %65 = add i32 %64, 1
  store i32 %65, i32* %3, align 4
  br label %42

66:                                               ; preds = %42
  ret void
}

declare dso_local i32 @detect_dead_context(%struct.fw_ohci*, i8*, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @OHCI1394_IsoXmitContextBase(i32) #1

declare dso_local i32 @OHCI1394_IsoRcvContextBase(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
