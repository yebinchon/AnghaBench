; ModuleID = '/home/carl/AnghaBench/linux/drivers/firewire/extr_core-device.c_get_modalias.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firewire/extr_core-device.c_get_modalias.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_unit = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"ieee1394:ven%08Xmo%08Xsp%08Xver%08X\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fw_unit*, i8*, i64)* @get_modalias to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_modalias(%struct.fw_unit* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.fw_unit*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca [4 x i32], align 16
  store %struct.fw_unit* %0, %struct.fw_unit** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = bitcast [4 x i32]* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %8, i8 0, i64 16, i1 false)
  %9 = load %struct.fw_unit*, %struct.fw_unit** %4, align 8
  %10 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %11 = call i32 @get_modalias_ids(%struct.fw_unit* %9, i32* %10)
  %12 = load i8*, i8** %5, align 8
  %13 = load i64, i64* %6, align 8
  %14 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %15 = load i32, i32* %14, align 16
  %16 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 1
  %17 = load i32, i32* %16, align 4
  %18 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 2
  %19 = load i32, i32* %18, align 8
  %20 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 3
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @snprintf(i8* %12, i64 %13, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %17, i32 %19, i32 %21)
  ret i32 %22
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @get_modalias_ids(%struct.fw_unit*, i32*) #2

declare dso_local i32 @snprintf(i8*, i64, i8*, i32, i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
