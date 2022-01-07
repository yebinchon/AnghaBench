; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_execbuf.c_vmw_cmd_describe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_execbuf.c_vmw_cmd_describe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmw_cmd_entry = type { i8* }
%struct.TYPE_2__ = type { i64, i64 }

@SVGA_CMD_MAX = common dso_local global i64 0, align 8
@SVGA_3D_CMD_MAX = common dso_local global i64 0, align 8
@SVGA_3D_CMD_BASE = common dso_local global i64 0, align 8
@vmw_cmd_entries = common dso_local global %struct.vmw_cmd_entry* null, align 8
@.str = private unnamed_addr constant [16 x i8] c"SVGA_CMD_UPDATE\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"SVGA_CMD_DEFINE_GMRFB\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"SVGA_CMD_BLIT_GMRFB_TO_SCREEN\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"SVGA_CMD_BLIT_SCREEN_TO_GMRFB\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"UNKNOWN\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vmw_cmd_describe(i8* %0, i64* %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_2__*, align 8
  %10 = alloca %struct.vmw_cmd_entry*, align 8
  store i8* %0, i8** %5, align 8
  store i64* %1, i64** %6, align 8
  store i8** %2, i8*** %7, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to i64*
  %13 = getelementptr inbounds i64, i64* %12, i64 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %8, align 8
  %15 = load i64, i64* %8, align 8
  %16 = load i64, i64* @SVGA_CMD_MAX, align 8
  %17 = icmp uge i64 %15, %16
  br i1 %17, label %18, label %44

18:                                               ; preds = %3
  %19 = load i8*, i8** %5, align 8
  %20 = bitcast i8* %19 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %20, %struct.TYPE_2__** %9, align 8
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = add i64 %23, 16
  %25 = load i64*, i64** %6, align 8
  store i64 %24, i64* %25, align 8
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %8, align 8
  %29 = load i64, i64* %8, align 8
  %30 = load i64, i64* @SVGA_3D_CMD_MAX, align 8
  %31 = icmp uge i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %18
  store i32 0, i32* %4, align 4
  br label %62

33:                                               ; preds = %18
  %34 = load i64, i64* @SVGA_3D_CMD_BASE, align 8
  %35 = load i64, i64* %8, align 8
  %36 = sub i64 %35, %34
  store i64 %36, i64* %8, align 8
  %37 = load %struct.vmw_cmd_entry*, %struct.vmw_cmd_entry** @vmw_cmd_entries, align 8
  %38 = load i64, i64* %8, align 8
  %39 = getelementptr inbounds %struct.vmw_cmd_entry, %struct.vmw_cmd_entry* %37, i64 %38
  store %struct.vmw_cmd_entry* %39, %struct.vmw_cmd_entry** %10, align 8
  %40 = load %struct.vmw_cmd_entry*, %struct.vmw_cmd_entry** %10, align 8
  %41 = getelementptr inbounds %struct.vmw_cmd_entry, %struct.vmw_cmd_entry* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = load i8**, i8*** %7, align 8
  store i8* %42, i8** %43, align 8
  store i32 1, i32* %4, align 4
  br label %62

44:                                               ; preds = %3
  %45 = load i64, i64* %8, align 8
  switch i64 %45, label %58 [
    i64 128, label %46
    i64 129, label %49
    i64 131, label %52
    i64 130, label %55
  ]

46:                                               ; preds = %44
  %47 = load i8**, i8*** %7, align 8
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8** %47, align 8
  %48 = load i64*, i64** %6, align 8
  store i64 12, i64* %48, align 8
  br label %61

49:                                               ; preds = %44
  %50 = load i8**, i8*** %7, align 8
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8** %50, align 8
  %51 = load i64*, i64** %6, align 8
  store i64 12, i64* %51, align 8
  br label %61

52:                                               ; preds = %44
  %53 = load i8**, i8*** %7, align 8
  store i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i8** %53, align 8
  %54 = load i64*, i64** %6, align 8
  store i64 12, i64* %54, align 8
  br label %61

55:                                               ; preds = %44
  %56 = load i8**, i8*** %7, align 8
  store i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i8** %56, align 8
  %57 = load i64*, i64** %6, align 8
  store i64 12, i64* %57, align 8
  br label %61

58:                                               ; preds = %44
  %59 = load i8**, i8*** %7, align 8
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8** %59, align 8
  %60 = load i64*, i64** %6, align 8
  store i64 0, i64* %60, align 8
  store i32 0, i32* %4, align 4
  br label %62

61:                                               ; preds = %55, %52, %49, %46
  store i32 1, i32* %4, align 4
  br label %62

62:                                               ; preds = %61, %58, %33, %32
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
