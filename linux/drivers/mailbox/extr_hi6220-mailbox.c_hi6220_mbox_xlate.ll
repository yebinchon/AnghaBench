; ModuleID = '/home/carl/AnghaBench/linux/drivers/mailbox/extr_hi6220-mailbox.c_hi6220_mbox_xlate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mailbox/extr_hi6220-mailbox.c_hi6220_mbox_xlate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbox_chan = type { %struct.hi6220_mbox_chan* }
%struct.hi6220_mbox_chan = type { i32, i32 }
%struct.mbox_controller = type { i32 }
%struct.of_phandle_args = type { i32* }
%struct.hi6220_mbox = type { i32, i8**, i32, %struct.mbox_chan* }

@.str = private unnamed_addr constant [46 x i8] c"Invalid channel idx %d dst_irq %d ack_irq %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"Channel in use\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mbox_chan* (%struct.mbox_controller*, %struct.of_phandle_args*)* @hi6220_mbox_xlate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mbox_chan* @hi6220_mbox_xlate(%struct.mbox_controller* %0, %struct.of_phandle_args* %1) #0 {
  %3 = alloca %struct.mbox_chan*, align 8
  %4 = alloca %struct.mbox_controller*, align 8
  %5 = alloca %struct.of_phandle_args*, align 8
  %6 = alloca %struct.hi6220_mbox*, align 8
  %7 = alloca %struct.hi6220_mbox_chan*, align 8
  %8 = alloca %struct.mbox_chan*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.mbox_controller* %0, %struct.mbox_controller** %4, align 8
  store %struct.of_phandle_args* %1, %struct.of_phandle_args** %5, align 8
  %12 = load %struct.mbox_controller*, %struct.mbox_controller** %4, align 8
  %13 = getelementptr inbounds %struct.mbox_controller, %struct.mbox_controller* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.hi6220_mbox* @dev_get_drvdata(i32 %14)
  store %struct.hi6220_mbox* %15, %struct.hi6220_mbox** %6, align 8
  %16 = load %struct.of_phandle_args*, %struct.of_phandle_args** %5, align 8
  %17 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %9, align 4
  %21 = load %struct.of_phandle_args*, %struct.of_phandle_args** %5, align 8
  %22 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 1
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %10, align 4
  %26 = load %struct.of_phandle_args*, %struct.of_phandle_args** %5, align 8
  %27 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 2
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* %9, align 4
  %32 = load %struct.hi6220_mbox*, %struct.hi6220_mbox** %6, align 8
  %33 = getelementptr inbounds %struct.hi6220_mbox, %struct.hi6220_mbox* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp uge i32 %31, %34
  br i1 %35, label %48, label %36

36:                                               ; preds = %2
  %37 = load i32, i32* %10, align 4
  %38 = load %struct.hi6220_mbox*, %struct.hi6220_mbox** %6, align 8
  %39 = getelementptr inbounds %struct.hi6220_mbox, %struct.hi6220_mbox* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp uge i32 %37, %40
  br i1 %41, label %48, label %42

42:                                               ; preds = %36
  %43 = load i32, i32* %11, align 4
  %44 = load %struct.hi6220_mbox*, %struct.hi6220_mbox** %6, align 8
  %45 = getelementptr inbounds %struct.hi6220_mbox, %struct.hi6220_mbox* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp uge i32 %43, %46
  br i1 %47, label %48, label %59

48:                                               ; preds = %42, %36, %2
  %49 = load %struct.hi6220_mbox*, %struct.hi6220_mbox** %6, align 8
  %50 = getelementptr inbounds %struct.hi6220_mbox, %struct.hi6220_mbox* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* %11, align 4
  %55 = call i32 (i32, i8*, ...) @dev_err(i32 %51, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %52, i32 %53, i32 %54)
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  %58 = call %struct.mbox_chan* @ERR_PTR(i32 %57)
  store %struct.mbox_chan* %58, %struct.mbox_chan** %3, align 8
  br label %103

59:                                               ; preds = %42
  %60 = load %struct.hi6220_mbox*, %struct.hi6220_mbox** %6, align 8
  %61 = getelementptr inbounds %struct.hi6220_mbox, %struct.hi6220_mbox* %60, i32 0, i32 3
  %62 = load %struct.mbox_chan*, %struct.mbox_chan** %61, align 8
  %63 = load i32, i32* %9, align 4
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds %struct.mbox_chan, %struct.mbox_chan* %62, i64 %64
  store %struct.mbox_chan* %65, %struct.mbox_chan** %8, align 8
  %66 = load %struct.hi6220_mbox*, %struct.hi6220_mbox** %6, align 8
  %67 = getelementptr inbounds %struct.hi6220_mbox, %struct.hi6220_mbox* %66, i32 0, i32 1
  %68 = load i8**, i8*** %67, align 8
  %69 = load i32, i32* %11, align 4
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds i8*, i8** %68, i64 %70
  %72 = load i8*, i8** %71, align 8
  %73 = load %struct.mbox_chan*, %struct.mbox_chan** %8, align 8
  %74 = bitcast %struct.mbox_chan* %73 to i8*
  %75 = icmp eq i8* %72, %74
  br i1 %75, label %76, label %84

76:                                               ; preds = %59
  %77 = load %struct.hi6220_mbox*, %struct.hi6220_mbox** %6, align 8
  %78 = getelementptr inbounds %struct.hi6220_mbox, %struct.hi6220_mbox* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = call i32 (i32, i8*, ...) @dev_err(i32 %79, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %81 = load i32, i32* @EBUSY, align 4
  %82 = sub nsw i32 0, %81
  %83 = call %struct.mbox_chan* @ERR_PTR(i32 %82)
  store %struct.mbox_chan* %83, %struct.mbox_chan** %3, align 8
  br label %103

84:                                               ; preds = %59
  %85 = load %struct.mbox_chan*, %struct.mbox_chan** %8, align 8
  %86 = getelementptr inbounds %struct.mbox_chan, %struct.mbox_chan* %85, i32 0, i32 0
  %87 = load %struct.hi6220_mbox_chan*, %struct.hi6220_mbox_chan** %86, align 8
  store %struct.hi6220_mbox_chan* %87, %struct.hi6220_mbox_chan** %7, align 8
  %88 = load i32, i32* %10, align 4
  %89 = load %struct.hi6220_mbox_chan*, %struct.hi6220_mbox_chan** %7, align 8
  %90 = getelementptr inbounds %struct.hi6220_mbox_chan, %struct.hi6220_mbox_chan* %89, i32 0, i32 0
  store i32 %88, i32* %90, align 4
  %91 = load i32, i32* %11, align 4
  %92 = load %struct.hi6220_mbox_chan*, %struct.hi6220_mbox_chan** %7, align 8
  %93 = getelementptr inbounds %struct.hi6220_mbox_chan, %struct.hi6220_mbox_chan* %92, i32 0, i32 1
  store i32 %91, i32* %93, align 4
  %94 = load %struct.mbox_chan*, %struct.mbox_chan** %8, align 8
  %95 = bitcast %struct.mbox_chan* %94 to i8*
  %96 = load %struct.hi6220_mbox*, %struct.hi6220_mbox** %6, align 8
  %97 = getelementptr inbounds %struct.hi6220_mbox, %struct.hi6220_mbox* %96, i32 0, i32 1
  %98 = load i8**, i8*** %97, align 8
  %99 = load i32, i32* %11, align 4
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds i8*, i8** %98, i64 %100
  store i8* %95, i8** %101, align 8
  %102 = load %struct.mbox_chan*, %struct.mbox_chan** %8, align 8
  store %struct.mbox_chan* %102, %struct.mbox_chan** %3, align 8
  br label %103

103:                                              ; preds = %84, %76, %48
  %104 = load %struct.mbox_chan*, %struct.mbox_chan** %3, align 8
  ret %struct.mbox_chan* %104
}

declare dso_local %struct.hi6220_mbox* @dev_get_drvdata(i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local %struct.mbox_chan* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
