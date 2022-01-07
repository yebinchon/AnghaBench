; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_mxl5xx.c_set_drive_strength.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_mxl5xx.c_set_drive_strength.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mxl = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"DIGIO = %08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"set drive_strength = %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mxl*, i32)* @set_drive_strength to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_drive_strength(%struct.mxl* %0, i32 %1) #0 {
  %3 = alloca %struct.mxl*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mxl* %0, %struct.mxl** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %7 = load %struct.mxl*, %struct.mxl** %3, align 8
  %8 = call i32 @read_register(%struct.mxl* %7, i32 -1879047788, i32* %6)
  %9 = load %struct.mxl*, %struct.mxl** %3, align 8
  %10 = getelementptr inbounds %struct.mxl, %struct.mxl* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @dev_info(i32 %11, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = load %struct.mxl*, %struct.mxl** %3, align 8
  %15 = getelementptr inbounds %struct.mxl, %struct.mxl* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @dev_info(i32 %16, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %17)
  %19 = load %struct.mxl*, %struct.mxl** %3, align 8
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @update_by_mnemonic(%struct.mxl* %19, i32 -1879047788, i32 0, i32 3, i32 %20)
  %22 = load i32, i32* %5, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %5, align 4
  %24 = load %struct.mxl*, %struct.mxl** %3, align 8
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @update_by_mnemonic(%struct.mxl* %24, i32 -1879047788, i32 20, i32 3, i32 %25)
  %27 = load i32, i32* %5, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %5, align 4
  %29 = load %struct.mxl*, %struct.mxl** %3, align 8
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @update_by_mnemonic(%struct.mxl* %29, i32 -1879047788, i32 24, i32 3, i32 %30)
  %32 = load i32, i32* %5, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %5, align 4
  %34 = load %struct.mxl*, %struct.mxl** %3, align 8
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @update_by_mnemonic(%struct.mxl* %34, i32 -1879047784, i32 12, i32 3, i32 %35)
  %37 = load i32, i32* %5, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %5, align 4
  %39 = load %struct.mxl*, %struct.mxl** %3, align 8
  %40 = load i32, i32* %4, align 4
  %41 = call i32 @update_by_mnemonic(%struct.mxl* %39, i32 -1879047784, i32 16, i32 3, i32 %40)
  %42 = load i32, i32* %5, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %5, align 4
  %44 = load %struct.mxl*, %struct.mxl** %3, align 8
  %45 = load i32, i32* %4, align 4
  %46 = call i32 @update_by_mnemonic(%struct.mxl* %44, i32 -1879047784, i32 20, i32 3, i32 %45)
  %47 = load i32, i32* %5, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %5, align 4
  %49 = load %struct.mxl*, %struct.mxl** %3, align 8
  %50 = load i32, i32* %4, align 4
  %51 = call i32 @update_by_mnemonic(%struct.mxl* %49, i32 -1879047784, i32 24, i32 3, i32 %50)
  %52 = load i32, i32* %5, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %5, align 4
  %54 = load %struct.mxl*, %struct.mxl** %3, align 8
  %55 = load i32, i32* %4, align 4
  %56 = call i32 @update_by_mnemonic(%struct.mxl* %54, i32 -1879047780, i32 0, i32 3, i32 %55)
  %57 = load i32, i32* %5, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %5, align 4
  %59 = load %struct.mxl*, %struct.mxl** %3, align 8
  %60 = load i32, i32* %4, align 4
  %61 = call i32 @update_by_mnemonic(%struct.mxl* %59, i32 -1879047780, i32 4, i32 3, i32 %60)
  %62 = load i32, i32* %5, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %5, align 4
  %64 = load %struct.mxl*, %struct.mxl** %3, align 8
  %65 = load i32, i32* %4, align 4
  %66 = call i32 @update_by_mnemonic(%struct.mxl* %64, i32 -1879047780, i32 8, i32 3, i32 %65)
  %67 = load i32, i32* %5, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %5, align 4
  %69 = load %struct.mxl*, %struct.mxl** %3, align 8
  %70 = load i32, i32* %4, align 4
  %71 = call i32 @update_by_mnemonic(%struct.mxl* %69, i32 -1879047780, i32 24, i32 3, i32 %70)
  %72 = load i32, i32* %5, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %5, align 4
  %74 = load %struct.mxl*, %struct.mxl** %3, align 8
  %75 = load i32, i32* %4, align 4
  %76 = call i32 @update_by_mnemonic(%struct.mxl* %74, i32 -1879047780, i32 28, i32 3, i32 %75)
  %77 = load i32, i32* %5, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %5, align 4
  %79 = load %struct.mxl*, %struct.mxl** %3, align 8
  %80 = load i32, i32* %4, align 4
  %81 = call i32 @update_by_mnemonic(%struct.mxl* %79, i32 -1879047776, i32 0, i32 3, i32 %80)
  %82 = load i32, i32* %5, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %5, align 4
  %84 = load %struct.mxl*, %struct.mxl** %3, align 8
  %85 = load i32, i32* %4, align 4
  %86 = call i32 @update_by_mnemonic(%struct.mxl* %84, i32 -1879047776, i32 4, i32 3, i32 %85)
  %87 = load i32, i32* %5, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %5, align 4
  %89 = load %struct.mxl*, %struct.mxl** %3, align 8
  %90 = load i32, i32* %4, align 4
  %91 = call i32 @update_by_mnemonic(%struct.mxl* %89, i32 -1879047776, i32 20, i32 3, i32 %90)
  %92 = load i32, i32* %5, align 4
  %93 = or i32 %92, %91
  store i32 %93, i32* %5, align 4
  %94 = load %struct.mxl*, %struct.mxl** %3, align 8
  %95 = load i32, i32* %4, align 4
  %96 = call i32 @update_by_mnemonic(%struct.mxl* %94, i32 -1879047776, i32 24, i32 3, i32 %95)
  %97 = load i32, i32* %5, align 4
  %98 = or i32 %97, %96
  store i32 %98, i32* %5, align 4
  %99 = load %struct.mxl*, %struct.mxl** %3, align 8
  %100 = load i32, i32* %4, align 4
  %101 = call i32 @update_by_mnemonic(%struct.mxl* %99, i32 -1879047776, i32 28, i32 3, i32 %100)
  %102 = load i32, i32* %5, align 4
  %103 = or i32 %102, %101
  store i32 %103, i32* %5, align 4
  %104 = load i32, i32* %5, align 4
  ret i32 %104
}

declare dso_local i32 @read_register(%struct.mxl*, i32, i32*) #1

declare dso_local i32 @dev_info(i32, i8*, i32) #1

declare dso_local i32 @update_by_mnemonic(%struct.mxl*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
