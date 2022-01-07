; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_xen-kbdfront.c_xenkbd_handle_key_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_xen-kbdfront.c_xenkbd_handle_key_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xenkbd_info = type { %struct.input_dev*, %struct.input_dev* }
%struct.input_dev = type { i32, i32 }
%struct.xenkbd_key = type { i32, i32 }

@.str = private unnamed_addr constant [24 x i8] c"unhandled keycode 0x%x\0A\00", align 1
@EV_KEY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xenkbd_info*, %struct.xenkbd_key*)* @xenkbd_handle_key_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xenkbd_handle_key_event(%struct.xenkbd_info* %0, %struct.xenkbd_key* %1) #0 {
  %3 = alloca %struct.xenkbd_info*, align 8
  %4 = alloca %struct.xenkbd_key*, align 8
  %5 = alloca %struct.input_dev*, align 8
  %6 = alloca i32, align 4
  store %struct.xenkbd_info* %0, %struct.xenkbd_info** %3, align 8
  store %struct.xenkbd_key* %1, %struct.xenkbd_key** %4, align 8
  %7 = load %struct.xenkbd_key*, %struct.xenkbd_key** %4, align 8
  %8 = getelementptr inbounds %struct.xenkbd_key, %struct.xenkbd_key* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %6, align 4
  %10 = load %struct.xenkbd_key*, %struct.xenkbd_key** %4, align 8
  %11 = getelementptr inbounds %struct.xenkbd_key, %struct.xenkbd_key* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.xenkbd_info*, %struct.xenkbd_info** %3, align 8
  %14 = getelementptr inbounds %struct.xenkbd_info, %struct.xenkbd_info* %13, i32 0, i32 1
  %15 = load %struct.input_dev*, %struct.input_dev** %14, align 8
  %16 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @test_bit(i32 %12, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %2
  %21 = load %struct.xenkbd_info*, %struct.xenkbd_info** %3, align 8
  %22 = getelementptr inbounds %struct.xenkbd_info, %struct.xenkbd_info* %21, i32 0, i32 1
  %23 = load %struct.input_dev*, %struct.input_dev** %22, align 8
  store %struct.input_dev* %23, %struct.input_dev** %5, align 8
  br label %62

24:                                               ; preds = %2
  %25 = load %struct.xenkbd_key*, %struct.xenkbd_key** %4, align 8
  %26 = getelementptr inbounds %struct.xenkbd_key, %struct.xenkbd_key* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.xenkbd_info*, %struct.xenkbd_info** %3, align 8
  %29 = getelementptr inbounds %struct.xenkbd_info, %struct.xenkbd_info* %28, i32 0, i32 0
  %30 = load %struct.input_dev*, %struct.input_dev** %29, align 8
  %31 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @test_bit(i32 %27, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %56

35:                                               ; preds = %24
  %36 = load %struct.xenkbd_info*, %struct.xenkbd_info** %3, align 8
  %37 = getelementptr inbounds %struct.xenkbd_info, %struct.xenkbd_info* %36, i32 0, i32 0
  %38 = load %struct.input_dev*, %struct.input_dev** %37, align 8
  store %struct.input_dev* %38, %struct.input_dev** %5, align 8
  %39 = load %struct.xenkbd_key*, %struct.xenkbd_key** %4, align 8
  %40 = getelementptr inbounds %struct.xenkbd_key, %struct.xenkbd_key* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %55

43:                                               ; preds = %35
  %44 = load %struct.xenkbd_key*, %struct.xenkbd_key** %4, align 8
  %45 = getelementptr inbounds %struct.xenkbd_key, %struct.xenkbd_key* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.xenkbd_info*, %struct.xenkbd_info** %3, align 8
  %48 = getelementptr inbounds %struct.xenkbd_info, %struct.xenkbd_info* %47, i32 0, i32 0
  %49 = load %struct.input_dev*, %struct.input_dev** %48, align 8
  %50 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i64 @test_bit(i32 %46, i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %43
  store i32 2, i32* %6, align 4
  br label %55

55:                                               ; preds = %54, %43, %35
  br label %61

56:                                               ; preds = %24
  %57 = load %struct.xenkbd_key*, %struct.xenkbd_key** %4, align 8
  %58 = getelementptr inbounds %struct.xenkbd_key, %struct.xenkbd_key* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @pr_warn(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %59)
  br label %80

61:                                               ; preds = %55
  br label %62

62:                                               ; preds = %61, %20
  %63 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %64 = icmp ne %struct.input_dev* %63, null
  %65 = xor i1 %64, true
  %66 = zext i1 %65 to i32
  %67 = call i64 @unlikely(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %62
  br label %80

70:                                               ; preds = %62
  %71 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %72 = load i32, i32* @EV_KEY, align 4
  %73 = load %struct.xenkbd_key*, %struct.xenkbd_key** %4, align 8
  %74 = getelementptr inbounds %struct.xenkbd_key, %struct.xenkbd_key* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %6, align 4
  %77 = call i32 @input_event(%struct.input_dev* %71, i32 %72, i32 %75, i32 %76)
  %78 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %79 = call i32 @input_sync(%struct.input_dev* %78)
  br label %80

80:                                               ; preds = %70, %69, %56
  ret void
}

declare dso_local i64 @test_bit(i32, i32) #1

declare dso_local i32 @pr_warn(i8*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @input_event(%struct.input_dev*, i32, i32, i32) #1

declare dso_local i32 @input_sync(%struct.input_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
