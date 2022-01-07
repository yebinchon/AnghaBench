; ModuleID = '/home/carl/AnghaBench/linux/drivers/firewire/extr_core-iso.c_manage_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firewire/extr_core-iso.c_manage_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_card = type { i32 }

@EIO = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@TCODE_LOCK_COMPARE_SWAP = common dso_local global i32 0, align 4
@SCODE_100 = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fw_card*, i32, i32, i32, i32, i32)* @manage_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @manage_channel(%struct.fw_card* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.fw_card*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca [2 x i32], align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.fw_card* %0, %struct.fw_card** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %21 = load i32, i32* @EIO, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %19, align 4
  store i32 5, i32* %20, align 4
  %23 = load i32, i32* %13, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %6
  %26 = call i32 @cpu_to_be32(i32 -1)
  br label %28

27:                                               ; preds = %6
  br label %28

28:                                               ; preds = %27, %25
  %29 = phi i32 [ %26, %25 ], [ 0, %27 ]
  store i32 %29, i32* %15, align 4
  store i32 %29, i32* %16, align 4
  store i32 0, i32* %18, align 4
  br label %30

30:                                               ; preds = %114, %28
  %31 = load i32, i32* %18, align 4
  %32 = icmp slt i32 %31, 32
  br i1 %32, label %33, label %117

33:                                               ; preds = %30
  %34 = load i32, i32* %11, align 4
  %35 = load i32, i32* %18, align 4
  %36 = shl i32 1, %35
  %37 = and i32 %34, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %33
  br label %114

40:                                               ; preds = %33
  %41 = load i32, i32* @EBUSY, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %19, align 4
  %43 = load i32, i32* %18, align 4
  %44 = sub nsw i32 31, %43
  %45 = shl i32 1, %44
  %46 = call i32 @cpu_to_be32(i32 %45)
  store i32 %46, i32* %14, align 4
  %47 = load i32, i32* %16, align 4
  %48 = load i32, i32* %14, align 4
  %49 = and i32 %47, %48
  %50 = load i32, i32* %15, align 4
  %51 = load i32, i32* %14, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %49, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %40
  br label %114

55:                                               ; preds = %40
  %56 = load i32, i32* %16, align 4
  %57 = getelementptr inbounds [2 x i32], [2 x i32]* %17, i64 0, i64 0
  store i32 %56, i32* %57, align 4
  %58 = load i32, i32* %16, align 4
  %59 = load i32, i32* %14, align 4
  %60 = xor i32 %58, %59
  %61 = getelementptr inbounds [2 x i32], [2 x i32]* %17, i64 0, i64 1
  store i32 %60, i32* %61, align 4
  %62 = load %struct.fw_card*, %struct.fw_card** %8, align 8
  %63 = load i32, i32* @TCODE_LOCK_COMPARE_SWAP, align 4
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* %10, align 4
  %66 = load i32, i32* @SCODE_100, align 4
  %67 = load i32, i32* %12, align 4
  %68 = getelementptr inbounds [2 x i32], [2 x i32]* %17, i64 0, i64 0
  %69 = call i32 @fw_run_transaction(%struct.fw_card* %62, i32 %63, i32 %64, i32 %65, i32 %66, i32 %67, i32* %68, i32 8)
  switch i32 %69, label %101 [
    i32 128, label %70
    i32 129, label %80
  ]

70:                                               ; preds = %55
  %71 = load i32, i32* %13, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %70
  %74 = load i32, i32* @EAGAIN, align 4
  %75 = sub nsw i32 0, %74
  br label %78

76:                                               ; preds = %70
  %77 = load i32, i32* %18, align 4
  br label %78

78:                                               ; preds = %76, %73
  %79 = phi i32 [ %75, %73 ], [ %77, %76 ]
  store i32 %79, i32* %7, align 4
  br label %119

80:                                               ; preds = %55
  %81 = getelementptr inbounds [2 x i32], [2 x i32]* %17, i64 0, i64 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %16, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %85, label %87

85:                                               ; preds = %80
  %86 = load i32, i32* %18, align 4
  store i32 %86, i32* %7, align 4
  br label %119

87:                                               ; preds = %80
  %88 = getelementptr inbounds [2 x i32], [2 x i32]* %17, i64 0, i64 0
  %89 = load i32, i32* %88, align 4
  store i32 %89, i32* %16, align 4
  %90 = getelementptr inbounds [2 x i32], [2 x i32]* %17, i64 0, i64 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* %14, align 4
  %93 = and i32 %91, %92
  %94 = getelementptr inbounds [2 x i32], [2 x i32]* %17, i64 0, i64 1
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* %14, align 4
  %97 = and i32 %95, %96
  %98 = icmp eq i32 %93, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %87
  br label %114

100:                                              ; preds = %87
  br label %101

101:                                              ; preds = %55, %100
  %102 = load i32, i32* %20, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %109

104:                                              ; preds = %101
  %105 = load i32, i32* %20, align 4
  %106 = add nsw i32 %105, -1
  store i32 %106, i32* %20, align 4
  %107 = load i32, i32* %18, align 4
  %108 = add nsw i32 %107, -1
  store i32 %108, i32* %18, align 4
  br label %112

109:                                              ; preds = %101
  %110 = load i32, i32* @EIO, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %19, align 4
  br label %112

112:                                              ; preds = %109, %104
  br label %113

113:                                              ; preds = %112
  br label %114

114:                                              ; preds = %113, %99, %54, %39
  %115 = load i32, i32* %18, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %18, align 4
  br label %30

117:                                              ; preds = %30
  %118 = load i32, i32* %19, align 4
  store i32 %118, i32* %7, align 4
  br label %119

119:                                              ; preds = %117, %85, %78
  %120 = load i32, i32* %7, align 4
  ret i32 %120
}

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @fw_run_transaction(%struct.fw_card*, i32, i32, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
