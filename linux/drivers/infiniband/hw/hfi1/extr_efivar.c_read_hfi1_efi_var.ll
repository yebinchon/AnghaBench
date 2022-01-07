; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_efivar.c_read_hfi1_efi_var.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_efivar.c_read_hfi1_efi_var.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_devdata = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"%04x:%02x:%02x.%x\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%s-%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @read_hfi1_efi_var(%struct.hfi1_devdata* %0, i8* %1, i64* %2, i8** %3) #0 {
  %5 = alloca %struct.hfi1_devdata*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca [64 x i8], align 16
  %10 = alloca [64 x i8], align 16
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.hfi1_devdata* %0, %struct.hfi1_devdata** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64* %2, i64** %7, align 8
  store i8** %3, i8*** %8, align 8
  %13 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  %14 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %5, align 8
  %15 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %14, i32 0, i32 0
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = call i32 @pci_domain_nr(%struct.TYPE_4__* %18)
  %20 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %5, align 8
  %21 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %20, i32 0, i32 0
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %5, align 8
  %28 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %27, i32 0, i32 0
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @PCI_SLOT(i32 %31)
  %33 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %5, align 8
  %34 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %33, i32 0, i32 0
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @PCI_FUNC(i32 %37)
  %39 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %13, i32 64, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %26, i32 %32, i32 %38)
  %40 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  %41 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  %42 = load i8*, i8** %6, align 8
  %43 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %40, i32 64, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %41, i8* %42)
  %44 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  %45 = load i64*, i64** %7, align 8
  %46 = load i8**, i8*** %8, align 8
  %47 = call i32 @read_efi_var(i8* %44, i64* %45, i8** %46)
  store i32 %47, i32* %11, align 4
  %48 = load i32, i32* %11, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %86

50:                                               ; preds = %4
  store i32 0, i32* %12, align 4
  br label %51

51:                                               ; preds = %74, %50
  %52 = load i32, i32* %12, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 %53
  %55 = load i8, i8* %54, align 1
  %56 = icmp ne i8 %55, 0
  br i1 %56, label %57, label %77

57:                                               ; preds = %51
  %58 = load i32, i32* %12, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 %59
  %61 = load i8, i8* %60, align 1
  %62 = call i64 @isalpha(i8 signext %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %73

64:                                               ; preds = %57
  %65 = load i32, i32* %12, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 %66
  %68 = load i8, i8* %67, align 1
  %69 = call signext i8 @toupper(i8 signext %68)
  %70 = load i32, i32* %12, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 %71
  store i8 %69, i8* %72, align 1
  br label %73

73:                                               ; preds = %64, %57
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %12, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %12, align 4
  br label %51

77:                                               ; preds = %51
  %78 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  %79 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  %80 = load i8*, i8** %6, align 8
  %81 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %78, i32 64, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %79, i8* %80)
  %82 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  %83 = load i64*, i64** %7, align 8
  %84 = load i8**, i8*** %8, align 8
  %85 = call i32 @read_efi_var(i8* %82, i64* %83, i8** %84)
  store i32 %85, i32* %11, align 4
  br label %86

86:                                               ; preds = %77, %4
  %87 = load i32, i32* %11, align 4
  ret i32 %87
}

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #1

declare dso_local i32 @pci_domain_nr(%struct.TYPE_4__*) #1

declare dso_local i32 @PCI_SLOT(i32) #1

declare dso_local i32 @PCI_FUNC(i32) #1

declare dso_local i32 @read_efi_var(i8*, i64*, i8**) #1

declare dso_local i64 @isalpha(i8 signext) #1

declare dso_local signext i8 @toupper(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
