; ModuleID = '/home/carl/AnghaBench/linux/drivers/isdn/hardware/mISDN/extr_avmfritz.c_setup_fritz.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/isdn/hardware/mISDN/extr_avmfritz.c_setup_fritz.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fritzcard = type { i32, i64, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [42 x i8] c"%s: AVM config port %x-%x already in use\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@AVM_HDLC_1 = common dso_local global i32 0, align 4
@CHIP_INDEX = common dso_local global i64 0, align 8
@CHIP_WINDOW = common dso_local global i64 0, align 8
@HDLC_STATUS = common dso_local global i64 0, align 8
@debug = common dso_local global i32 0, align 4
@DEBUG_HW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"%s: PCI stat %#x\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"%s: PCI Class %X Rev %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"%s: HDLC version %x\0A\00", align 1
@V1 = common dso_local global i32 0, align 4
@ISAC = common dso_local global i32 0, align 4
@IPAC_TYPE_ISAC = common dso_local global i32 0, align 4
@AVM_HDLC_STATUS_1 = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [21 x i8] c"%s: PCI V2 stat %#x\0A\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"%s: PCI V2 Class %X Rev %d\0A\00", align 1
@V2 = common dso_local global i32 0, align 4
@IPAC_TYPE_ISACX = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [25 x i8] c"%s: AVM unknown type %d\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [32 x i8] c"%s: %s config irq:%d base:0x%X\0A\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"AVM Fritz!CARD PCI\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"AVM Fritz!CARD PCIv2\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fritzcard*)* @setup_fritz to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup_fritz(%struct.fritzcard* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fritzcard*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.fritzcard* %0, %struct.fritzcard** %3, align 8
  %6 = load %struct.fritzcard*, %struct.fritzcard** %3, align 8
  %7 = getelementptr inbounds %struct.fritzcard, %struct.fritzcard* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.fritzcard*, %struct.fritzcard** %3, align 8
  %10 = getelementptr inbounds %struct.fritzcard, %struct.fritzcard* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @request_region(i64 %8, i32 32, i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %29, label %14

14:                                               ; preds = %1
  %15 = load %struct.fritzcard*, %struct.fritzcard** %3, align 8
  %16 = getelementptr inbounds %struct.fritzcard, %struct.fritzcard* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.fritzcard*, %struct.fritzcard** %3, align 8
  %19 = getelementptr inbounds %struct.fritzcard, %struct.fritzcard* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = trunc i64 %20 to i32
  %22 = load %struct.fritzcard*, %struct.fritzcard** %3, align 8
  %23 = getelementptr inbounds %struct.fritzcard, %struct.fritzcard* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = add nsw i64 %24, 31
  %26 = call i32 (i8*, i32, i32, ...) @pr_info(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %21, i64 %25)
  %27 = load i32, i32* @EIO, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %171

29:                                               ; preds = %1
  %30 = load %struct.fritzcard*, %struct.fritzcard** %3, align 8
  %31 = getelementptr inbounds %struct.fritzcard, %struct.fritzcard* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  switch i32 %32, label %140 [
    i32 129, label %33
    i32 128, label %91
  ]

33:                                               ; preds = %29
  %34 = load %struct.fritzcard*, %struct.fritzcard** %3, align 8
  %35 = getelementptr inbounds %struct.fritzcard, %struct.fritzcard* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @inl(i64 %36)
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* @AVM_HDLC_1, align 4
  %39 = load %struct.fritzcard*, %struct.fritzcard** %3, align 8
  %40 = getelementptr inbounds %struct.fritzcard, %struct.fritzcard* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @CHIP_INDEX, align 8
  %43 = add nsw i64 %41, %42
  %44 = call i32 @outl(i32 %38, i64 %43)
  %45 = load %struct.fritzcard*, %struct.fritzcard** %3, align 8
  %46 = getelementptr inbounds %struct.fritzcard, %struct.fritzcard* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @CHIP_WINDOW, align 8
  %49 = add nsw i64 %47, %48
  %50 = load i64, i64* @HDLC_STATUS, align 8
  %51 = add nsw i64 %49, %50
  %52 = call i32 @inl(i64 %51)
  %53 = ashr i32 %52, 24
  store i32 %53, i32* %5, align 4
  %54 = load i32, i32* @debug, align 4
  %55 = load i32, i32* @DEBUG_HW, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %79

58:                                               ; preds = %33
  %59 = load %struct.fritzcard*, %struct.fritzcard** %3, align 8
  %60 = getelementptr inbounds %struct.fritzcard, %struct.fritzcard* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %4, align 4
  %63 = call i32 (i8*, i32, ...) @pr_notice(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %61, i32 %62)
  %64 = load %struct.fritzcard*, %struct.fritzcard** %3, align 8
  %65 = getelementptr inbounds %struct.fritzcard, %struct.fritzcard* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %4, align 4
  %68 = and i32 %67, 255
  %69 = load i32, i32* %4, align 4
  %70 = ashr i32 %69, 8
  %71 = and i32 %70, 255
  %72 = call i32 (i8*, i32, ...) @pr_notice(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %66, i32 %68, i32 %71)
  %73 = load %struct.fritzcard*, %struct.fritzcard** %3, align 8
  %74 = getelementptr inbounds %struct.fritzcard, %struct.fritzcard* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %5, align 4
  %77 = and i32 %76, 15
  %78 = call i32 (i8*, i32, ...) @pr_notice(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %75, i32 %77)
  br label %79

79:                                               ; preds = %58, %33
  %80 = load i32, i32* @V1, align 4
  %81 = load i32, i32* @ISAC, align 4
  %82 = load %struct.fritzcard*, %struct.fritzcard** %3, align 8
  %83 = getelementptr inbounds %struct.fritzcard, %struct.fritzcard* %82, i32 0, i32 4
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @ASSIGN_FUNC(i32 %80, i32 %81, i32 %85)
  %87 = load i32, i32* @IPAC_TYPE_ISAC, align 4
  %88 = load %struct.fritzcard*, %struct.fritzcard** %3, align 8
  %89 = getelementptr inbounds %struct.fritzcard, %struct.fritzcard* %88, i32 0, i32 4
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  store i32 %87, i32* %90, align 8
  br label %154

91:                                               ; preds = %29
  %92 = load %struct.fritzcard*, %struct.fritzcard** %3, align 8
  %93 = getelementptr inbounds %struct.fritzcard, %struct.fritzcard* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = call i32 @inl(i64 %94)
  store i32 %95, i32* %4, align 4
  %96 = load %struct.fritzcard*, %struct.fritzcard** %3, align 8
  %97 = getelementptr inbounds %struct.fritzcard, %struct.fritzcard* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @AVM_HDLC_STATUS_1, align 8
  %100 = add nsw i64 %98, %99
  %101 = call i32 @inl(i64 %100)
  %102 = ashr i32 %101, 24
  store i32 %102, i32* %5, align 4
  %103 = load i32, i32* @debug, align 4
  %104 = load i32, i32* @DEBUG_HW, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %128

107:                                              ; preds = %91
  %108 = load %struct.fritzcard*, %struct.fritzcard** %3, align 8
  %109 = getelementptr inbounds %struct.fritzcard, %struct.fritzcard* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* %4, align 4
  %112 = call i32 (i8*, i32, ...) @pr_notice(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 %110, i32 %111)
  %113 = load %struct.fritzcard*, %struct.fritzcard** %3, align 8
  %114 = getelementptr inbounds %struct.fritzcard, %struct.fritzcard* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* %4, align 4
  %117 = and i32 %116, 255
  %118 = load i32, i32* %4, align 4
  %119 = ashr i32 %118, 8
  %120 = and i32 %119, 255
  %121 = call i32 (i8*, i32, ...) @pr_notice(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i32 %115, i32 %117, i32 %120)
  %122 = load %struct.fritzcard*, %struct.fritzcard** %3, align 8
  %123 = getelementptr inbounds %struct.fritzcard, %struct.fritzcard* %122, i32 0, i32 3
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* %5, align 4
  %126 = and i32 %125, 15
  %127 = call i32 (i8*, i32, ...) @pr_notice(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %124, i32 %126)
  br label %128

128:                                              ; preds = %107, %91
  %129 = load i32, i32* @V2, align 4
  %130 = load i32, i32* @ISAC, align 4
  %131 = load %struct.fritzcard*, %struct.fritzcard** %3, align 8
  %132 = getelementptr inbounds %struct.fritzcard, %struct.fritzcard* %131, i32 0, i32 4
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = call i32 @ASSIGN_FUNC(i32 %129, i32 %130, i32 %134)
  %136 = load i32, i32* @IPAC_TYPE_ISACX, align 4
  %137 = load %struct.fritzcard*, %struct.fritzcard** %3, align 8
  %138 = getelementptr inbounds %struct.fritzcard, %struct.fritzcard* %137, i32 0, i32 4
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i32 0, i32 0
  store i32 %136, i32* %139, align 8
  br label %154

140:                                              ; preds = %29
  %141 = load %struct.fritzcard*, %struct.fritzcard** %3, align 8
  %142 = getelementptr inbounds %struct.fritzcard, %struct.fritzcard* %141, i32 0, i32 1
  %143 = load i64, i64* %142, align 8
  %144 = call i32 @release_region(i64 %143, i32 32)
  %145 = load %struct.fritzcard*, %struct.fritzcard** %3, align 8
  %146 = getelementptr inbounds %struct.fritzcard, %struct.fritzcard* %145, i32 0, i32 3
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.fritzcard*, %struct.fritzcard** %3, align 8
  %149 = getelementptr inbounds %struct.fritzcard, %struct.fritzcard* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = call i32 (i8*, i32, i32, ...) @pr_info(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i32 %147, i32 %150)
  %152 = load i32, i32* @ENODEV, align 4
  %153 = sub nsw i32 0, %152
  store i32 %153, i32* %2, align 4
  br label %171

154:                                              ; preds = %128, %79
  %155 = load %struct.fritzcard*, %struct.fritzcard** %3, align 8
  %156 = getelementptr inbounds %struct.fritzcard, %struct.fritzcard* %155, i32 0, i32 3
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.fritzcard*, %struct.fritzcard** %3, align 8
  %159 = getelementptr inbounds %struct.fritzcard, %struct.fritzcard* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = icmp eq i32 %160, 129
  %162 = zext i1 %161 to i64
  %163 = select i1 %161, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0)
  %164 = load %struct.fritzcard*, %struct.fritzcard** %3, align 8
  %165 = getelementptr inbounds %struct.fritzcard, %struct.fritzcard* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 8
  %167 = load %struct.fritzcard*, %struct.fritzcard** %3, align 8
  %168 = getelementptr inbounds %struct.fritzcard, %struct.fritzcard* %167, i32 0, i32 1
  %169 = load i64, i64* %168, align 8
  %170 = call i32 (i8*, i32, ...) @pr_notice(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0), i32 %157, i8* %163, i32 %166, i64 %169)
  store i32 0, i32* %2, align 4
  br label %171

171:                                              ; preds = %154, %140, %14
  %172 = load i32, i32* %2, align 4
  ret i32 %172
}

declare dso_local i32 @request_region(i64, i32, i32) #1

declare dso_local i32 @pr_info(i8*, i32, i32, ...) #1

declare dso_local i32 @inl(i64) #1

declare dso_local i32 @outl(i32, i64) #1

declare dso_local i32 @pr_notice(i8*, i32, ...) #1

declare dso_local i32 @ASSIGN_FUNC(i32, i32, i32) #1

declare dso_local i32 @release_region(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
