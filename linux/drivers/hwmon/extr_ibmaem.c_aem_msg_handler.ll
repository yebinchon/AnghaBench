; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_ibmaem.c_aem_msg_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_ibmaem.c_aem_msg_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipmi_recv_msg = type { i64, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32* }
%struct.aem_ipmi_data = type { i64, i16, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [70 x i8] c"Mismatch between received msgid (%02x) and transmitted msgid (%02x)!\0A\00", align 1
@IPMI_UNKNOWN_ERR_COMPLETION_CODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipmi_recv_msg*, i8*)* @aem_msg_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aem_msg_handler(%struct.ipmi_recv_msg* %0, i8* %1) #0 {
  %3 = alloca %struct.ipmi_recv_msg*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i16, align 2
  %6 = alloca %struct.aem_ipmi_data*, align 8
  store %struct.ipmi_recv_msg* %0, %struct.ipmi_recv_msg** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.aem_ipmi_data*
  store %struct.aem_ipmi_data* %8, %struct.aem_ipmi_data** %6, align 8
  %9 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %3, align 8
  %10 = getelementptr inbounds %struct.ipmi_recv_msg, %struct.ipmi_recv_msg* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.aem_ipmi_data*, %struct.aem_ipmi_data** %6, align 8
  %13 = getelementptr inbounds %struct.aem_ipmi_data, %struct.aem_ipmi_data* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %11, %14
  br i1 %15, label %16, label %31

16:                                               ; preds = %2
  %17 = load %struct.aem_ipmi_data*, %struct.aem_ipmi_data** %6, align 8
  %18 = getelementptr inbounds %struct.aem_ipmi_data, %struct.aem_ipmi_data* %17, i32 0, i32 6
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %3, align 8
  %21 = getelementptr inbounds %struct.ipmi_recv_msg, %struct.ipmi_recv_msg* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = trunc i64 %22 to i32
  %24 = load %struct.aem_ipmi_data*, %struct.aem_ipmi_data** %6, align 8
  %25 = getelementptr inbounds %struct.aem_ipmi_data, %struct.aem_ipmi_data* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = trunc i64 %26 to i32
  %28 = call i32 @dev_err(i32 %19, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %27)
  %29 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %3, align 8
  %30 = call i32 @ipmi_free_recv_msg(%struct.ipmi_recv_msg* %29)
  br label %104

31:                                               ; preds = %2
  %32 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %3, align 8
  %33 = getelementptr inbounds %struct.ipmi_recv_msg, %struct.ipmi_recv_msg* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.aem_ipmi_data*, %struct.aem_ipmi_data** %6, align 8
  %36 = getelementptr inbounds %struct.aem_ipmi_data, %struct.aem_ipmi_data* %35, i32 0, i32 5
  store i32 %34, i32* %36, align 8
  %37 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %3, align 8
  %38 = getelementptr inbounds %struct.ipmi_recv_msg, %struct.ipmi_recv_msg* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %31
  %43 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %3, align 8
  %44 = getelementptr inbounds %struct.ipmi_recv_msg, %struct.ipmi_recv_msg* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.aem_ipmi_data*, %struct.aem_ipmi_data** %6, align 8
  %50 = getelementptr inbounds %struct.aem_ipmi_data, %struct.aem_ipmi_data* %49, i32 0, i32 4
  store i32 %48, i32* %50, align 4
  br label %55

51:                                               ; preds = %31
  %52 = load i32, i32* @IPMI_UNKNOWN_ERR_COMPLETION_CODE, align 4
  %53 = load %struct.aem_ipmi_data*, %struct.aem_ipmi_data** %6, align 8
  %54 = getelementptr inbounds %struct.aem_ipmi_data, %struct.aem_ipmi_data* %53, i32 0, i32 4
  store i32 %52, i32* %54, align 4
  br label %55

55:                                               ; preds = %51, %42
  %56 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %3, align 8
  %57 = getelementptr inbounds %struct.ipmi_recv_msg, %struct.ipmi_recv_msg* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp sgt i32 %59, 1
  br i1 %60, label %61, label %95

61:                                               ; preds = %55
  %62 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %3, align 8
  %63 = getelementptr inbounds %struct.ipmi_recv_msg, %struct.ipmi_recv_msg* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = sub nsw i32 %65, 1
  %67 = trunc i32 %66 to i16
  store i16 %67, i16* %5, align 2
  %68 = load %struct.aem_ipmi_data*, %struct.aem_ipmi_data** %6, align 8
  %69 = getelementptr inbounds %struct.aem_ipmi_data, %struct.aem_ipmi_data* %68, i32 0, i32 1
  %70 = load i16, i16* %69, align 8
  %71 = zext i16 %70 to i32
  %72 = load i16, i16* %5, align 2
  %73 = zext i16 %72 to i32
  %74 = icmp slt i32 %71, %73
  br i1 %74, label %75, label %79

75:                                               ; preds = %61
  %76 = load %struct.aem_ipmi_data*, %struct.aem_ipmi_data** %6, align 8
  %77 = getelementptr inbounds %struct.aem_ipmi_data, %struct.aem_ipmi_data* %76, i32 0, i32 1
  %78 = load i16, i16* %77, align 8
  store i16 %78, i16* %5, align 2
  br label %79

79:                                               ; preds = %75, %61
  %80 = load i16, i16* %5, align 2
  %81 = load %struct.aem_ipmi_data*, %struct.aem_ipmi_data** %6, align 8
  %82 = getelementptr inbounds %struct.aem_ipmi_data, %struct.aem_ipmi_data* %81, i32 0, i32 1
  store i16 %80, i16* %82, align 8
  %83 = load %struct.aem_ipmi_data*, %struct.aem_ipmi_data** %6, align 8
  %84 = getelementptr inbounds %struct.aem_ipmi_data, %struct.aem_ipmi_data* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %3, align 8
  %87 = getelementptr inbounds %struct.ipmi_recv_msg, %struct.ipmi_recv_msg* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 1
  %89 = load i32*, i32** %88, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 1
  %91 = load %struct.aem_ipmi_data*, %struct.aem_ipmi_data** %6, align 8
  %92 = getelementptr inbounds %struct.aem_ipmi_data, %struct.aem_ipmi_data* %91, i32 0, i32 1
  %93 = load i16, i16* %92, align 8
  %94 = call i32 @memcpy(i32 %85, i32* %90, i16 zeroext %93)
  br label %98

95:                                               ; preds = %55
  %96 = load %struct.aem_ipmi_data*, %struct.aem_ipmi_data** %6, align 8
  %97 = getelementptr inbounds %struct.aem_ipmi_data, %struct.aem_ipmi_data* %96, i32 0, i32 1
  store i16 0, i16* %97, align 8
  br label %98

98:                                               ; preds = %95, %79
  %99 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %3, align 8
  %100 = call i32 @ipmi_free_recv_msg(%struct.ipmi_recv_msg* %99)
  %101 = load %struct.aem_ipmi_data*, %struct.aem_ipmi_data** %6, align 8
  %102 = getelementptr inbounds %struct.aem_ipmi_data, %struct.aem_ipmi_data* %101, i32 0, i32 2
  %103 = call i32 @complete(i32* %102)
  br label %104

104:                                              ; preds = %98, %16
  ret void
}

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

declare dso_local i32 @ipmi_free_recv_msg(%struct.ipmi_recv_msg*) #1

declare dso_local i32 @memcpy(i32, i32*, i16 zeroext) #1

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
