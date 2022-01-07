; ModuleID = '/home/carl/AnghaBench/linux/drivers/isdn/mISDN/extr_hwchannel.c_mISDN_ctrl_bchannel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/isdn/mISDN/extr_hwchannel.c_mISDN_ctrl_bchannel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bchannel = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.mISDN_ctrl_req = type { i32, i32, i32 }

@MISDN_BCH_FILL_SIZE = common dso_local global i32 0, align 4
@FLG_FILLEMPTY = common dso_local global i32 0, align 4
@FLG_RX_OFF = common dso_local global i32 0, align 4
@MISDN_CTRL_RX_SIZE_IGNORE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"mISDN unhandled control %x operation\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mISDN_ctrl_bchannel(%struct.bchannel* %0, %struct.mISDN_ctrl_req* %1) #0 {
  %3 = alloca %struct.bchannel*, align 8
  %4 = alloca %struct.mISDN_ctrl_req*, align 8
  %5 = alloca i32, align 4
  store %struct.bchannel* %0, %struct.bchannel** %3, align 8
  store %struct.mISDN_ctrl_req* %1, %struct.mISDN_ctrl_req** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.mISDN_ctrl_req*, %struct.mISDN_ctrl_req** %4, align 8
  %7 = getelementptr inbounds %struct.mISDN_ctrl_req, %struct.mISDN_ctrl_req* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %95 [
    i32 130, label %9
    i32 131, label %12
    i32 128, label %37
    i32 129, label %60
  ]

9:                                                ; preds = %2
  %10 = load %struct.mISDN_ctrl_req*, %struct.mISDN_ctrl_req** %4, align 8
  %11 = getelementptr inbounds %struct.mISDN_ctrl_req, %struct.mISDN_ctrl_req* %10, i32 0, i32 0
  store i32 131, i32* %11, align 4
  br label %102

12:                                               ; preds = %2
  %13 = load %struct.mISDN_ctrl_req*, %struct.mISDN_ctrl_req** %4, align 8
  %14 = getelementptr inbounds %struct.mISDN_ctrl_req, %struct.mISDN_ctrl_req* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %31

17:                                               ; preds = %12
  %18 = load %struct.bchannel*, %struct.bchannel** %3, align 8
  %19 = getelementptr inbounds %struct.bchannel, %struct.bchannel* %18, i32 0, i32 6
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.mISDN_ctrl_req*, %struct.mISDN_ctrl_req** %4, align 8
  %22 = getelementptr inbounds %struct.mISDN_ctrl_req, %struct.mISDN_ctrl_req* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = and i32 %23, 255
  %25 = load i32, i32* @MISDN_BCH_FILL_SIZE, align 4
  %26 = call i32 @memset(i32 %20, i32 %24, i32 %25)
  %27 = load i32, i32* @FLG_FILLEMPTY, align 4
  %28 = load %struct.bchannel*, %struct.bchannel** %3, align 8
  %29 = getelementptr inbounds %struct.bchannel, %struct.bchannel* %28, i32 0, i32 5
  %30 = call i32 @test_and_set_bit(i32 %27, i32* %29)
  br label %36

31:                                               ; preds = %12
  %32 = load i32, i32* @FLG_FILLEMPTY, align 4
  %33 = load %struct.bchannel*, %struct.bchannel** %3, align 8
  %34 = getelementptr inbounds %struct.bchannel, %struct.bchannel* %33, i32 0, i32 5
  %35 = call i32 @test_and_clear_bit(i32 %32, i32* %34)
  br label %36

36:                                               ; preds = %31, %17
  br label %102

37:                                               ; preds = %2
  %38 = load %struct.bchannel*, %struct.bchannel** %3, align 8
  %39 = getelementptr inbounds %struct.bchannel, %struct.bchannel* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.mISDN_ctrl_req*, %struct.mISDN_ctrl_req** %4, align 8
  %42 = getelementptr inbounds %struct.mISDN_ctrl_req, %struct.mISDN_ctrl_req* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 4
  %43 = load %struct.mISDN_ctrl_req*, %struct.mISDN_ctrl_req** %4, align 8
  %44 = getelementptr inbounds %struct.mISDN_ctrl_req, %struct.mISDN_ctrl_req* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %37
  %48 = load i32, i32* @FLG_RX_OFF, align 4
  %49 = load %struct.bchannel*, %struct.bchannel** %3, align 8
  %50 = getelementptr inbounds %struct.bchannel, %struct.bchannel* %49, i32 0, i32 5
  %51 = call i32 @test_and_set_bit(i32 %48, i32* %50)
  br label %57

52:                                               ; preds = %37
  %53 = load i32, i32* @FLG_RX_OFF, align 4
  %54 = load %struct.bchannel*, %struct.bchannel** %3, align 8
  %55 = getelementptr inbounds %struct.bchannel, %struct.bchannel* %54, i32 0, i32 5
  %56 = call i32 @test_and_clear_bit(i32 %53, i32* %55)
  br label %57

57:                                               ; preds = %52, %47
  %58 = load %struct.bchannel*, %struct.bchannel** %3, align 8
  %59 = getelementptr inbounds %struct.bchannel, %struct.bchannel* %58, i32 0, i32 0
  store i32 0, i32* %59, align 4
  br label %102

60:                                               ; preds = %2
  %61 = load %struct.mISDN_ctrl_req*, %struct.mISDN_ctrl_req** %4, align 8
  %62 = getelementptr inbounds %struct.mISDN_ctrl_req, %struct.mISDN_ctrl_req* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @MISDN_CTRL_RX_SIZE_IGNORE, align 4
  %65 = icmp sgt i32 %63, %64
  br i1 %65, label %66, label %72

66:                                               ; preds = %60
  %67 = load %struct.mISDN_ctrl_req*, %struct.mISDN_ctrl_req** %4, align 8
  %68 = getelementptr inbounds %struct.mISDN_ctrl_req, %struct.mISDN_ctrl_req* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.bchannel*, %struct.bchannel** %3, align 8
  %71 = getelementptr inbounds %struct.bchannel, %struct.bchannel* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 4
  br label %72

72:                                               ; preds = %66, %60
  %73 = load %struct.mISDN_ctrl_req*, %struct.mISDN_ctrl_req** %4, align 8
  %74 = getelementptr inbounds %struct.mISDN_ctrl_req, %struct.mISDN_ctrl_req* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @MISDN_CTRL_RX_SIZE_IGNORE, align 4
  %77 = icmp sgt i32 %75, %76
  br i1 %77, label %78, label %84

78:                                               ; preds = %72
  %79 = load %struct.mISDN_ctrl_req*, %struct.mISDN_ctrl_req** %4, align 8
  %80 = getelementptr inbounds %struct.mISDN_ctrl_req, %struct.mISDN_ctrl_req* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.bchannel*, %struct.bchannel** %3, align 8
  %83 = getelementptr inbounds %struct.bchannel, %struct.bchannel* %82, i32 0, i32 2
  store i32 %81, i32* %83, align 4
  br label %84

84:                                               ; preds = %78, %72
  %85 = load %struct.bchannel*, %struct.bchannel** %3, align 8
  %86 = getelementptr inbounds %struct.bchannel, %struct.bchannel* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.mISDN_ctrl_req*, %struct.mISDN_ctrl_req** %4, align 8
  %89 = getelementptr inbounds %struct.mISDN_ctrl_req, %struct.mISDN_ctrl_req* %88, i32 0, i32 1
  store i32 %87, i32* %89, align 4
  %90 = load %struct.bchannel*, %struct.bchannel** %3, align 8
  %91 = getelementptr inbounds %struct.bchannel, %struct.bchannel* %90, i32 0, i32 4
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.mISDN_ctrl_req*, %struct.mISDN_ctrl_req** %4, align 8
  %94 = getelementptr inbounds %struct.mISDN_ctrl_req, %struct.mISDN_ctrl_req* %93, i32 0, i32 2
  store i32 %92, i32* %94, align 4
  br label %102

95:                                               ; preds = %2
  %96 = load %struct.mISDN_ctrl_req*, %struct.mISDN_ctrl_req** %4, align 8
  %97 = getelementptr inbounds %struct.mISDN_ctrl_req, %struct.mISDN_ctrl_req* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @pr_info(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %98)
  %100 = load i32, i32* @EINVAL, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %5, align 4
  br label %102

102:                                              ; preds = %95, %84, %57, %36, %9
  %103 = load i32, i32* %5, align 4
  ret i32 %103
}

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @pr_info(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
