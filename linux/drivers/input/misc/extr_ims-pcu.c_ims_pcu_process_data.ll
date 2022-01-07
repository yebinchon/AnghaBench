; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_ims-pcu.c_ims_pcu_process_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_ims-pcu.c_ims_pcu_process_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ims_pcu = type { i32*, i32, i32, i32*, i32, i64, i32 }
%struct.urb = type { i32 }

@.str = private unnamed_addr constant [48 x i8] c"Unexpected STX at byte %d, discarding old data\0A\00", align 1
@IMS_PCU_MIN_PACKET_LEN = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [44 x i8] c"Short packet received (%d bytes), ignoring\0A\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"Invalid checksum in packet (%d bytes), ignoring\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ims_pcu*, %struct.urb*)* @ims_pcu_process_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ims_pcu_process_data(%struct.ims_pcu* %0, %struct.urb* %1) #0 {
  %3 = alloca %struct.ims_pcu*, align 8
  %4 = alloca %struct.urb*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ims_pcu* %0, %struct.ims_pcu** %3, align 8
  store %struct.urb* %1, %struct.urb** %4, align 8
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %132, %2
  %8 = load i32, i32* %5, align 4
  %9 = load %struct.urb*, %struct.urb** %4, align 8
  %10 = getelementptr inbounds %struct.urb, %struct.urb* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp slt i32 %8, %11
  br i1 %12, label %13, label %135

13:                                               ; preds = %7
  %14 = load %struct.ims_pcu*, %struct.ims_pcu** %3, align 8
  %15 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %6, align 4
  %21 = load %struct.ims_pcu*, %struct.ims_pcu** %3, align 8
  %22 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %13
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 128
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  br label %132

29:                                               ; preds = %25, %13
  %30 = load %struct.ims_pcu*, %struct.ims_pcu** %3, align 8
  %31 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %51

34:                                               ; preds = %29
  %35 = load %struct.ims_pcu*, %struct.ims_pcu** %3, align 8
  %36 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %35, i32 0, i32 2
  store i32 0, i32* %36, align 4
  %37 = load i32, i32* %6, align 4
  %38 = load %struct.ims_pcu*, %struct.ims_pcu** %3, align 8
  %39 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %38, i32 0, i32 3
  %40 = load i32*, i32** %39, align 8
  %41 = load %struct.ims_pcu*, %struct.ims_pcu** %3, align 8
  %42 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %41, i32 0, i32 5
  %43 = load i64, i64* %42, align 8
  %44 = add nsw i64 %43, 1
  store i64 %44, i64* %42, align 8
  %45 = getelementptr inbounds i32, i32* %40, i64 %43
  store i32 %37, i32* %45, align 4
  %46 = load i32, i32* %6, align 4
  %47 = load %struct.ims_pcu*, %struct.ims_pcu** %3, align 8
  %48 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 8
  %50 = add nsw i32 %49, %46
  store i32 %50, i32* %48, align 8
  br label %132

51:                                               ; preds = %29
  %52 = load i32, i32* %6, align 4
  switch i32 %52, label %116 [
    i32 128, label %53
    i32 130, label %75
    i32 129, label %78
  ]

53:                                               ; preds = %51
  %54 = load %struct.ims_pcu*, %struct.ims_pcu** %3, align 8
  %55 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %66

58:                                               ; preds = %53
  %59 = load %struct.ims_pcu*, %struct.ims_pcu** %3, align 8
  %60 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %59, i32 0, i32 6
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.ims_pcu*, %struct.ims_pcu** %3, align 8
  %63 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %62, i32 0, i32 5
  %64 = load i64, i64* %63, align 8
  %65 = call i32 @dev_warn(i32 %61, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i64 %64)
  br label %66

66:                                               ; preds = %58, %53
  %67 = load %struct.ims_pcu*, %struct.ims_pcu** %3, align 8
  %68 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %67, i32 0, i32 1
  store i32 1, i32* %68, align 8
  %69 = load %struct.ims_pcu*, %struct.ims_pcu** %3, align 8
  %70 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %69, i32 0, i32 2
  store i32 0, i32* %70, align 4
  %71 = load %struct.ims_pcu*, %struct.ims_pcu** %3, align 8
  %72 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %71, i32 0, i32 5
  store i64 0, i64* %72, align 8
  %73 = load %struct.ims_pcu*, %struct.ims_pcu** %3, align 8
  %74 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %73, i32 0, i32 4
  store i32 0, i32* %74, align 8
  br label %131

75:                                               ; preds = %51
  %76 = load %struct.ims_pcu*, %struct.ims_pcu** %3, align 8
  %77 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %76, i32 0, i32 2
  store i32 1, i32* %77, align 4
  br label %131

78:                                               ; preds = %51
  %79 = load %struct.ims_pcu*, %struct.ims_pcu** %3, align 8
  %80 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %79, i32 0, i32 5
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @IMS_PCU_MIN_PACKET_LEN, align 8
  %83 = icmp slt i64 %81, %82
  br i1 %83, label %84, label %92

84:                                               ; preds = %78
  %85 = load %struct.ims_pcu*, %struct.ims_pcu** %3, align 8
  %86 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %85, i32 0, i32 6
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.ims_pcu*, %struct.ims_pcu** %3, align 8
  %89 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %88, i32 0, i32 5
  %90 = load i64, i64* %89, align 8
  %91 = call i32 @dev_warn(i32 %87, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i64 %90)
  br label %109

92:                                               ; preds = %78
  %93 = load %struct.ims_pcu*, %struct.ims_pcu** %3, align 8
  %94 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %93, i32 0, i32 4
  %95 = load i32, i32* %94, align 8
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %105

97:                                               ; preds = %92
  %98 = load %struct.ims_pcu*, %struct.ims_pcu** %3, align 8
  %99 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %98, i32 0, i32 6
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.ims_pcu*, %struct.ims_pcu** %3, align 8
  %102 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %101, i32 0, i32 5
  %103 = load i64, i64* %102, align 8
  %104 = call i32 @dev_warn(i32 %100, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i64 %103)
  br label %108

105:                                              ; preds = %92
  %106 = load %struct.ims_pcu*, %struct.ims_pcu** %3, align 8
  %107 = call i32 @ims_pcu_handle_response(%struct.ims_pcu* %106)
  br label %108

108:                                              ; preds = %105, %97
  br label %109

109:                                              ; preds = %108, %84
  %110 = load %struct.ims_pcu*, %struct.ims_pcu** %3, align 8
  %111 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %110, i32 0, i32 1
  store i32 0, i32* %111, align 8
  %112 = load %struct.ims_pcu*, %struct.ims_pcu** %3, align 8
  %113 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %112, i32 0, i32 2
  store i32 0, i32* %113, align 4
  %114 = load %struct.ims_pcu*, %struct.ims_pcu** %3, align 8
  %115 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %114, i32 0, i32 5
  store i64 0, i64* %115, align 8
  br label %131

116:                                              ; preds = %51
  %117 = load i32, i32* %6, align 4
  %118 = load %struct.ims_pcu*, %struct.ims_pcu** %3, align 8
  %119 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %118, i32 0, i32 3
  %120 = load i32*, i32** %119, align 8
  %121 = load %struct.ims_pcu*, %struct.ims_pcu** %3, align 8
  %122 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %121, i32 0, i32 5
  %123 = load i64, i64* %122, align 8
  %124 = add nsw i64 %123, 1
  store i64 %124, i64* %122, align 8
  %125 = getelementptr inbounds i32, i32* %120, i64 %123
  store i32 %117, i32* %125, align 4
  %126 = load i32, i32* %6, align 4
  %127 = load %struct.ims_pcu*, %struct.ims_pcu** %3, align 8
  %128 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %127, i32 0, i32 4
  %129 = load i32, i32* %128, align 8
  %130 = add nsw i32 %129, %126
  store i32 %130, i32* %128, align 8
  br label %131

131:                                              ; preds = %116, %109, %75, %66
  br label %132

132:                                              ; preds = %131, %34, %28
  %133 = load i32, i32* %5, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %5, align 4
  br label %7

135:                                              ; preds = %7
  ret void
}

declare dso_local i32 @dev_warn(i32, i8*, i64) #1

declare dso_local i32 @ims_pcu_handle_response(%struct.ims_pcu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
