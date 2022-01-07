; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mthca/extr_mthca_cmd.c_mthca_QUERY_DDR.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mthca/extr_mthca_cmd.c_mthca_QUERY_DDR.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mthca_dev = type { i32, i32, i32 }
%struct.mthca_mailbox = type { i32, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@CMD_QUERY_DDR = common dso_local global i32 0, align 4
@CMD_TIME_CLASS_A = common dso_local global i32 0, align 4
@MTHCA_FLAG_DDR_HIDDEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [77 x i8] c"FW reports that HCA-attached memory is %s hidden; does not match PCI config\0A\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"not\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"HCA-attached memory is hidden.\0A\00", align 1
@.str.4 = private unnamed_addr constant [46 x i8] c"HCA memory size %d KB (start %llx, end %llx)\0A\00", align 1
@QUERY_DDR_END_OFFSET = common dso_local global i32 0, align 4
@QUERY_DDR_INFO_HIDDEN_FLAG = common dso_local global i32 0, align 4
@QUERY_DDR_INFO_OFFSET = common dso_local global i32 0, align 4
@QUERY_DDR_START_OFFSET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mthca_QUERY_DDR(%struct.mthca_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mthca_dev*, align 8
  %4 = alloca %struct.mthca_mailbox*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.mthca_dev* %0, %struct.mthca_dev** %3, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.mthca_mailbox* @mthca_alloc_mailbox(%struct.mthca_dev* %8, i32 %9)
  store %struct.mthca_mailbox* %10, %struct.mthca_mailbox** %4, align 8
  %11 = load %struct.mthca_mailbox*, %struct.mthca_mailbox** %4, align 8
  %12 = call i64 @IS_ERR(%struct.mthca_mailbox* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load %struct.mthca_mailbox*, %struct.mthca_mailbox** %4, align 8
  %16 = call i32 @PTR_ERR(%struct.mthca_mailbox* %15)
  store i32 %16, i32* %2, align 4
  br label %100

17:                                               ; preds = %1
  %18 = load %struct.mthca_mailbox*, %struct.mthca_mailbox** %4, align 8
  %19 = getelementptr inbounds %struct.mthca_mailbox, %struct.mthca_mailbox* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  store i32* %20, i32** %6, align 8
  %21 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %22 = load %struct.mthca_mailbox*, %struct.mthca_mailbox** %4, align 8
  %23 = getelementptr inbounds %struct.mthca_mailbox, %struct.mthca_mailbox* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @CMD_QUERY_DDR, align 4
  %26 = load i32, i32* @CMD_TIME_CLASS_A, align 4
  %27 = call i32 @mthca_cmd_box(%struct.mthca_dev* %21, i32 0, i32 %24, i32 0, i32 0, i32 %25, i32 %26)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %17
  br label %95

31:                                               ; preds = %17
  %32 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %33 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32*, i32** %6, align 8
  %36 = call i32 @MTHCA_GET(i32 %34, i32* %35, i32 0)
  %37 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %38 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32*, i32** %6, align 8
  %41 = call i32 @MTHCA_GET(i32 %39, i32* %40, i32 8)
  %42 = load i32, i32* %5, align 4
  %43 = load i32*, i32** %6, align 8
  %44 = call i32 @MTHCA_GET(i32 %42, i32* %43, i32 19)
  %45 = load i32, i32* %5, align 4
  %46 = and i32 %45, 16
  %47 = icmp ne i32 %46, 0
  %48 = xor i1 %47, true
  %49 = xor i1 %48, true
  %50 = zext i1 %49 to i32
  %51 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %52 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @MTHCA_FLAG_DDR_HIDDEN, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  %57 = xor i1 %56, true
  %58 = xor i1 %57, true
  %59 = zext i1 %58 to i32
  %60 = icmp ne i32 %50, %59
  br i1 %60, label %61, label %69

61:                                               ; preds = %31
  %62 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %63 = load i32, i32* %5, align 4
  %64 = and i32 %63, 16
  %65 = icmp ne i32 %64, 0
  %66 = zext i1 %65 to i64
  %67 = select i1 %65, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %68 = call i32 @mthca_info(%struct.mthca_dev* %62, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str, i64 0, i64 0), i8* %67)
  br label %69

69:                                               ; preds = %61, %31
  %70 = load i32, i32* %5, align 4
  %71 = and i32 %70, 16
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %69
  %74 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %75 = call i32 (%struct.mthca_dev*, i8*, ...) @mthca_dbg(%struct.mthca_dev* %74, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  br label %76

76:                                               ; preds = %73, %69
  %77 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %78 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %79 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %82 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = sub nsw i32 %80, %83
  %85 = ashr i32 %84, 10
  %86 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %87 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = sext i32 %88 to i64
  %90 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %91 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = sext i32 %92 to i64
  %94 = call i32 (%struct.mthca_dev*, i8*, ...) @mthca_dbg(%struct.mthca_dev* %77, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0), i32 %85, i64 %89, i64 %93)
  br label %95

95:                                               ; preds = %76, %30
  %96 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %97 = load %struct.mthca_mailbox*, %struct.mthca_mailbox** %4, align 8
  %98 = call i32 @mthca_free_mailbox(%struct.mthca_dev* %96, %struct.mthca_mailbox* %97)
  %99 = load i32, i32* %7, align 4
  store i32 %99, i32* %2, align 4
  br label %100

100:                                              ; preds = %95, %14
  %101 = load i32, i32* %2, align 4
  ret i32 %101
}

declare dso_local %struct.mthca_mailbox* @mthca_alloc_mailbox(%struct.mthca_dev*, i32) #1

declare dso_local i64 @IS_ERR(%struct.mthca_mailbox*) #1

declare dso_local i32 @PTR_ERR(%struct.mthca_mailbox*) #1

declare dso_local i32 @mthca_cmd_box(%struct.mthca_dev*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @MTHCA_GET(i32, i32*, i32) #1

declare dso_local i32 @mthca_info(%struct.mthca_dev*, i8*, i8*) #1

declare dso_local i32 @mthca_dbg(%struct.mthca_dev*, i8*, ...) #1

declare dso_local i32 @mthca_free_mailbox(%struct.mthca_dev*, %struct.mthca_mailbox*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
