; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_edac_pci.c_edac_pci_alloc_ctl_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_edac_pci.c_edac_pci_alloc_ctl_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.edac_pci_ctl_info = type { i32, i32, i8* }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@OP_ALLOC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.edac_pci_ctl_info* @edac_pci_alloc_ctl_info(i32 %0, i8* %1) #0 {
  %3 = alloca %struct.edac_pci_ctl_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.edac_pci_ctl_info*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i8* null, i8** %7, align 8
  %10 = call i32 @edac_dbg(i32 1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %11 = call i8* @edac_align_ptr(i8** %7, i32 16, i32 1)
  %12 = bitcast i8* %11 to %struct.edac_pci_ctl_info*
  store %struct.edac_pci_ctl_info* %12, %struct.edac_pci_ctl_info** %6, align 8
  %13 = load i32, i32* %4, align 4
  %14 = call i8* @edac_align_ptr(i8** %7, i32 1, i32 %13)
  store i8* %14, i8** %8, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = ptrtoint i8* %15 to i64
  %17 = load i32, i32* %4, align 4
  %18 = zext i32 %17 to i64
  %19 = add i64 %16, %18
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call %struct.edac_pci_ctl_info* @kzalloc(i32 %21, i32 %22)
  store %struct.edac_pci_ctl_info* %23, %struct.edac_pci_ctl_info** %6, align 8
  %24 = load %struct.edac_pci_ctl_info*, %struct.edac_pci_ctl_info** %6, align 8
  %25 = icmp eq %struct.edac_pci_ctl_info* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %2
  store %struct.edac_pci_ctl_info* null, %struct.edac_pci_ctl_info** %3, align 8
  br label %54

27:                                               ; preds = %2
  %28 = load i32, i32* %4, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %27
  %31 = load %struct.edac_pci_ctl_info*, %struct.edac_pci_ctl_info** %6, align 8
  %32 = bitcast %struct.edac_pci_ctl_info* %31 to i8*
  %33 = load i8*, i8** %8, align 8
  %34 = ptrtoint i8* %33 to i64
  %35 = getelementptr inbounds i8, i8* %32, i64 %34
  br label %37

36:                                               ; preds = %27
  br label %37

37:                                               ; preds = %36, %30
  %38 = phi i8* [ %35, %30 ], [ null, %36 ]
  store i8* %38, i8** %8, align 8
  %39 = load i8*, i8** %8, align 8
  %40 = load %struct.edac_pci_ctl_info*, %struct.edac_pci_ctl_info** %6, align 8
  %41 = getelementptr inbounds %struct.edac_pci_ctl_info, %struct.edac_pci_ctl_info* %40, i32 0, i32 2
  store i8* %39, i8** %41, align 8
  %42 = load i32, i32* @OP_ALLOC, align 4
  %43 = load %struct.edac_pci_ctl_info*, %struct.edac_pci_ctl_info** %6, align 8
  %44 = getelementptr inbounds %struct.edac_pci_ctl_info, %struct.edac_pci_ctl_info* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  %45 = load %struct.edac_pci_ctl_info*, %struct.edac_pci_ctl_info** %6, align 8
  %46 = getelementptr inbounds %struct.edac_pci_ctl_info, %struct.edac_pci_ctl_info* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i8*, i8** %5, align 8
  %49 = call i64 @strlen(i8* %48)
  %50 = add nsw i64 %49, 1
  %51 = load i8*, i8** %5, align 8
  %52 = call i32 @snprintf(i32 %47, i64 %50, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %51)
  %53 = load %struct.edac_pci_ctl_info*, %struct.edac_pci_ctl_info** %6, align 8
  store %struct.edac_pci_ctl_info* %53, %struct.edac_pci_ctl_info** %3, align 8
  br label %54

54:                                               ; preds = %37, %26
  %55 = load %struct.edac_pci_ctl_info*, %struct.edac_pci_ctl_info** %3, align 8
  ret %struct.edac_pci_ctl_info* %55
}

declare dso_local i32 @edac_dbg(i32, i8*) #1

declare dso_local i8* @edac_align_ptr(i8**, i32, i32) #1

declare dso_local %struct.edac_pci_ctl_info* @kzalloc(i32, i32) #1

declare dso_local i32 @snprintf(i32, i64, i8*, i8*) #1

declare dso_local i64 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
