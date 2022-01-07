; ModuleID = '/home/carl/AnghaBench/linux/drivers/isdn/mISDN/extr_hwchannel.c_bchannel_get_rxbuf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/isdn/mISDN/extr_hwchannel.c_bchannel_get_rxbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bchannel = type { i32, i32, i32, i32, i32, i64, i32 }

@.str = private unnamed_addr constant [37 x i8] c"B%d no space for %d (only %d) bytes\0A\00", align 1
@FLG_TRANSPARENT = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"B%d receive no memory for %d bytes\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bchannel_get_rxbuf(%struct.bchannel* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bchannel*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.bchannel* %0, %struct.bchannel** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.bchannel*, %struct.bchannel** %4, align 8
  %8 = getelementptr inbounds %struct.bchannel, %struct.bchannel* %7, i32 0, i32 5
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %41

11:                                               ; preds = %2
  %12 = load %struct.bchannel*, %struct.bchannel** %4, align 8
  %13 = getelementptr inbounds %struct.bchannel, %struct.bchannel* %12, i32 0, i32 5
  %14 = load i64, i64* %13, align 8
  %15 = call i32 @skb_tailroom(i64 %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %38

19:                                               ; preds = %11
  %20 = load %struct.bchannel*, %struct.bchannel** %4, align 8
  %21 = getelementptr inbounds %struct.bchannel, %struct.bchannel* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* %6, align 4
  %25 = call i32 (i8*, i32, i32, ...) @pr_warning(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %23, i32 %24)
  %26 = load i32, i32* @FLG_TRANSPARENT, align 4
  %27 = load %struct.bchannel*, %struct.bchannel** %4, align 8
  %28 = getelementptr inbounds %struct.bchannel, %struct.bchannel* %27, i32 0, i32 6
  %29 = call i64 @test_bit(i32 %26, i32* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %19
  %32 = load %struct.bchannel*, %struct.bchannel** %4, align 8
  %33 = call i32 @recv_Bchannel(%struct.bchannel* %32, i32 0, i32 1)
  br label %37

34:                                               ; preds = %19
  %35 = load i32, i32* @EMSGSIZE, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %141

37:                                               ; preds = %31
  br label %40

38:                                               ; preds = %11
  %39 = load i32, i32* %6, align 4
  store i32 %39, i32* %3, align 4
  br label %141

40:                                               ; preds = %37
  br label %41

41:                                               ; preds = %40, %2
  %42 = load %struct.bchannel*, %struct.bchannel** %4, align 8
  %43 = getelementptr inbounds %struct.bchannel, %struct.bchannel* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.bchannel*, %struct.bchannel** %4, align 8
  %46 = getelementptr inbounds %struct.bchannel, %struct.bchannel* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %44, %47
  %49 = zext i1 %48 to i32
  %50 = call i64 @unlikely(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %41
  %53 = load %struct.bchannel*, %struct.bchannel** %4, align 8
  %54 = getelementptr inbounds %struct.bchannel, %struct.bchannel* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.bchannel*, %struct.bchannel** %4, align 8
  %57 = getelementptr inbounds %struct.bchannel, %struct.bchannel* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 8
  br label %58

58:                                               ; preds = %52, %41
  %59 = load %struct.bchannel*, %struct.bchannel** %4, align 8
  %60 = getelementptr inbounds %struct.bchannel, %struct.bchannel* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.bchannel*, %struct.bchannel** %4, align 8
  %63 = getelementptr inbounds %struct.bchannel, %struct.bchannel* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = icmp ne i32 %61, %64
  %66 = zext i1 %65 to i32
  %67 = call i64 @unlikely(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %58
  %70 = load %struct.bchannel*, %struct.bchannel** %4, align 8
  %71 = getelementptr inbounds %struct.bchannel, %struct.bchannel* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.bchannel*, %struct.bchannel** %4, align 8
  %74 = getelementptr inbounds %struct.bchannel, %struct.bchannel* %73, i32 0, i32 2
  store i32 %72, i32* %74, align 8
  br label %75

75:                                               ; preds = %69, %58
  %76 = load i32, i32* %5, align 4
  %77 = load %struct.bchannel*, %struct.bchannel** %4, align 8
  %78 = getelementptr inbounds %struct.bchannel, %struct.bchannel* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = icmp sgt i32 %76, %79
  %81 = zext i1 %80 to i32
  %82 = call i64 @unlikely(i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %75
  %85 = load i32, i32* @EMSGSIZE, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %3, align 4
  br label %141

87:                                               ; preds = %75
  %88 = load i32, i32* @FLG_TRANSPARENT, align 4
  %89 = load %struct.bchannel*, %struct.bchannel** %4, align 8
  %90 = getelementptr inbounds %struct.bchannel, %struct.bchannel* %89, i32 0, i32 6
  %91 = call i64 @test_bit(i32 %88, i32* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %117

93:                                               ; preds = %87
  %94 = load i32, i32* %5, align 4
  %95 = load %struct.bchannel*, %struct.bchannel** %4, align 8
  %96 = getelementptr inbounds %struct.bchannel, %struct.bchannel* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = icmp sge i32 %94, %97
  br i1 %98, label %99, label %101

99:                                               ; preds = %93
  %100 = load i32, i32* %5, align 4
  store i32 %100, i32* %6, align 4
  br label %116

101:                                              ; preds = %93
  %102 = load %struct.bchannel*, %struct.bchannel** %4, align 8
  %103 = getelementptr inbounds %struct.bchannel, %struct.bchannel* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = mul nsw i32 2, %104
  store i32 %105, i32* %6, align 4
  %106 = load i32, i32* %6, align 4
  %107 = load %struct.bchannel*, %struct.bchannel** %4, align 8
  %108 = getelementptr inbounds %struct.bchannel, %struct.bchannel* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = icmp sgt i32 %106, %109
  br i1 %110, label %111, label %115

111:                                              ; preds = %101
  %112 = load %struct.bchannel*, %struct.bchannel** %4, align 8
  %113 = getelementptr inbounds %struct.bchannel, %struct.bchannel* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  store i32 %114, i32* %6, align 4
  br label %115

115:                                              ; preds = %111, %101
  br label %116

116:                                              ; preds = %115, %99
  br label %121

117:                                              ; preds = %87
  %118 = load %struct.bchannel*, %struct.bchannel** %4, align 8
  %119 = getelementptr inbounds %struct.bchannel, %struct.bchannel* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  store i32 %120, i32* %6, align 4
  br label %121

121:                                              ; preds = %117, %116
  %122 = load i32, i32* %6, align 4
  %123 = load i32, i32* @GFP_ATOMIC, align 4
  %124 = call i64 @mI_alloc_skb(i32 %122, i32 %123)
  %125 = load %struct.bchannel*, %struct.bchannel** %4, align 8
  %126 = getelementptr inbounds %struct.bchannel, %struct.bchannel* %125, i32 0, i32 5
  store i64 %124, i64* %126, align 8
  %127 = load %struct.bchannel*, %struct.bchannel** %4, align 8
  %128 = getelementptr inbounds %struct.bchannel, %struct.bchannel* %127, i32 0, i32 5
  %129 = load i64, i64* %128, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %139, label %131

131:                                              ; preds = %121
  %132 = load %struct.bchannel*, %struct.bchannel** %4, align 8
  %133 = getelementptr inbounds %struct.bchannel, %struct.bchannel* %132, i32 0, i32 4
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* %6, align 4
  %136 = call i32 (i8*, i32, i32, ...) @pr_warning(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %134, i32 %135)
  %137 = load i32, i32* @ENOMEM, align 4
  %138 = sub nsw i32 0, %137
  store i32 %138, i32* %6, align 4
  br label %139

139:                                              ; preds = %131, %121
  %140 = load i32, i32* %6, align 4
  store i32 %140, i32* %3, align 4
  br label %141

141:                                              ; preds = %139, %84, %38, %34
  %142 = load i32, i32* %3, align 4
  ret i32 %142
}

declare dso_local i32 @skb_tailroom(i64) #1

declare dso_local i32 @pr_warning(i8*, i32, i32, ...) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @recv_Bchannel(%struct.bchannel*, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @mI_alloc_skb(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
