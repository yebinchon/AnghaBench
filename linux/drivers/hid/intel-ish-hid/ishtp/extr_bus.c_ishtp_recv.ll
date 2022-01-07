; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/intel-ish-hid/ishtp/extr_bus.c_ishtp_recv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/intel-ish-hid/ishtp/extr_bus.c_ishtp_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ishtp_device = type { i64, i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.ishtp_device*)*, i64 (%struct.ishtp_device*)* }
%struct.ishtp_msg_hdr = type { i64, i32, i32 }

@.str = private unnamed_addr constant [44 x i8] c"ISHTP hdr - bad length: %u; dropped [%08X]\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ishtp_recv(%struct.ishtp_device* %0) #0 {
  %2 = alloca %struct.ishtp_device*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.ishtp_msg_hdr*, align 8
  store %struct.ishtp_device* %0, %struct.ishtp_device** %2, align 8
  %5 = load %struct.ishtp_device*, %struct.ishtp_device** %2, align 8
  %6 = getelementptr inbounds %struct.ishtp_device, %struct.ishtp_device* %5, i32 0, i32 3
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 1
  %9 = load i64 (%struct.ishtp_device*)*, i64 (%struct.ishtp_device*)** %8, align 8
  %10 = load %struct.ishtp_device*, %struct.ishtp_device** %2, align 8
  %11 = call i64 %9(%struct.ishtp_device* %10)
  store i64 %11, i64* %3, align 8
  %12 = load i64, i64* %3, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  br label %72

15:                                               ; preds = %1
  %16 = load %struct.ishtp_device*, %struct.ishtp_device** %2, align 8
  %17 = getelementptr inbounds %struct.ishtp_device, %struct.ishtp_device* %16, i32 0, i32 3
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32 (%struct.ishtp_device*)*, i32 (%struct.ishtp_device*)** %19, align 8
  %21 = load %struct.ishtp_device*, %struct.ishtp_device** %2, align 8
  %22 = call i32 %20(%struct.ishtp_device* %21)
  %23 = bitcast i64* %3 to %struct.ishtp_msg_hdr*
  store %struct.ishtp_msg_hdr* %23, %struct.ishtp_msg_hdr** %4, align 8
  %24 = load i64, i64* %3, align 8
  %25 = load %struct.ishtp_device*, %struct.ishtp_device** %2, align 8
  %26 = getelementptr inbounds %struct.ishtp_device, %struct.ishtp_device* %25, i32 0, i32 2
  store i64 %24, i64* %26, align 8
  %27 = load %struct.ishtp_msg_hdr*, %struct.ishtp_msg_hdr** %4, align 8
  %28 = getelementptr inbounds %struct.ishtp_msg_hdr, %struct.ishtp_msg_hdr* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.ishtp_device*, %struct.ishtp_device** %2, align 8
  %31 = getelementptr inbounds %struct.ishtp_device, %struct.ishtp_device* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp sgt i64 %29, %32
  br i1 %33, label %34, label %44

34:                                               ; preds = %15
  %35 = load %struct.ishtp_device*, %struct.ishtp_device** %2, align 8
  %36 = getelementptr inbounds %struct.ishtp_device, %struct.ishtp_device* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.ishtp_msg_hdr*, %struct.ishtp_msg_hdr** %4, align 8
  %39 = getelementptr inbounds %struct.ishtp_msg_hdr, %struct.ishtp_msg_hdr* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = trunc i64 %40 to i32
  %42 = load i64, i64* %3, align 8
  %43 = call i32 @dev_err(i32 %37, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %41, i64 %42)
  br label %72

44:                                               ; preds = %15
  %45 = load %struct.ishtp_msg_hdr*, %struct.ishtp_msg_hdr** %4, align 8
  %46 = getelementptr inbounds %struct.ishtp_msg_hdr, %struct.ishtp_msg_hdr* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %58, label %49

49:                                               ; preds = %44
  %50 = load %struct.ishtp_msg_hdr*, %struct.ishtp_msg_hdr** %4, align 8
  %51 = getelementptr inbounds %struct.ishtp_msg_hdr, %struct.ishtp_msg_hdr* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %58, label %54

54:                                               ; preds = %49
  %55 = load %struct.ishtp_device*, %struct.ishtp_device** %2, align 8
  %56 = load %struct.ishtp_msg_hdr*, %struct.ishtp_msg_hdr** %4, align 8
  %57 = call i32 @recv_hbm(%struct.ishtp_device* %55, %struct.ishtp_msg_hdr* %56)
  br label %72

58:                                               ; preds = %49, %44
  %59 = load %struct.ishtp_msg_hdr*, %struct.ishtp_msg_hdr** %4, align 8
  %60 = getelementptr inbounds %struct.ishtp_msg_hdr, %struct.ishtp_msg_hdr* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %67, label %63

63:                                               ; preds = %58
  %64 = load %struct.ishtp_device*, %struct.ishtp_device** %2, align 8
  %65 = load %struct.ishtp_msg_hdr*, %struct.ishtp_msg_hdr** %4, align 8
  %66 = call i32 @recv_fixed_cl_msg(%struct.ishtp_device* %64, %struct.ishtp_msg_hdr* %65)
  br label %71

67:                                               ; preds = %58
  %68 = load %struct.ishtp_device*, %struct.ishtp_device** %2, align 8
  %69 = load %struct.ishtp_msg_hdr*, %struct.ishtp_msg_hdr** %4, align 8
  %70 = call i32 @recv_ishtp_cl_msg(%struct.ishtp_device* %68, %struct.ishtp_msg_hdr* %69)
  br label %71

71:                                               ; preds = %67, %63
  br label %72

72:                                               ; preds = %14, %34, %71, %54
  ret void
}

declare dso_local i32 @dev_err(i32, i8*, i32, i64) #1

declare dso_local i32 @recv_hbm(%struct.ishtp_device*, %struct.ishtp_msg_hdr*) #1

declare dso_local i32 @recv_fixed_cl_msg(%struct.ishtp_device*, %struct.ishtp_msg_hdr*) #1

declare dso_local i32 @recv_ishtp_cl_msg(%struct.ishtp_device*, %struct.ishtp_msg_hdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
