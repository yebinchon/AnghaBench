; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/nx/extr_nx-842-powernv.c_setup_ddl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/nx/extr_nx-842-powernv.c_setup_ddl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.data_descriptor_entry = type { i32 }

@DDE_BUFFER_ALIGN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"%s buffer pa 0x%lx not 0x%x-byte aligned\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"input\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"output\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@DDE_BUFFER_LAST_MULT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [43 x i8] c"%s buffer len 0x%x not a multiple of 0x%x\0A\00", align 1
@DDL_LEN_MAX = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [44 x i8] c"0x%x total %s bytes 0x%x too many for DDL.\0A\00", align 1
@EMSGSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.data_descriptor_entry*, %struct.data_descriptor_entry*, i8*, i32, i32)* @setup_ddl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup_ddl(%struct.data_descriptor_entry* %0, %struct.data_descriptor_entry* %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.data_descriptor_entry*, align 8
  %8 = alloca %struct.data_descriptor_entry*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.data_descriptor_entry* %0, %struct.data_descriptor_entry** %7, align 8
  store %struct.data_descriptor_entry* %1, %struct.data_descriptor_entry** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %16 = load i8*, i8** %9, align 8
  %17 = call i64 @nx842_get_pa(i8* %16)
  store i64 %17, i64* %12, align 8
  %18 = load i32, i32* %10, align 4
  store i32 %18, i32* %15, align 4
  %19 = load i64, i64* %12, align 8
  %20 = load i32, i32* @DDE_BUFFER_ALIGN, align 4
  %21 = call i32 @IS_ALIGNED(i64 %19, i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %33, label %23

23:                                               ; preds = %5
  %24 = load i32, i32* %11, align 4
  %25 = icmp ne i32 %24, 0
  %26 = zext i1 %25 to i64
  %27 = select i1 %25, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0)
  %28 = load i64, i64* %12, align 8
  %29 = load i32, i32* @DDE_BUFFER_ALIGN, align 4
  %30 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i8* %27, i64 %28, i32 %29)
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %6, align 4
  br label %126

33:                                               ; preds = %5
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* @DDE_BUFFER_LAST_MULT, align 4
  %36 = urem i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %55

38:                                               ; preds = %33
  %39 = load i32, i32* %11, align 4
  %40 = icmp ne i32 %39, 0
  %41 = zext i1 %40 to i64
  %42 = select i1 %40, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0)
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* @DDE_BUFFER_LAST_MULT, align 4
  %45 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i8* %42, i32 %43, i32 %44)
  %46 = load i32, i32* %11, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %38
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %6, align 4
  br label %126

51:                                               ; preds = %38
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* @DDE_BUFFER_LAST_MULT, align 4
  %54 = call i32 @round_down(i32 %52, i32 %53)
  store i32 %54, i32* %10, align 4
  br label %55

55:                                               ; preds = %51, %33
  %56 = load i32, i32* %10, align 4
  %57 = load i64, i64* %12, align 8
  %58 = call i32 @LEN_ON_PAGE(i64 %57)
  %59 = icmp ule i32 %56, %58
  br i1 %59, label %60, label %70

60:                                               ; preds = %55
  %61 = load %struct.data_descriptor_entry*, %struct.data_descriptor_entry** %7, align 8
  %62 = load i64, i64* %12, align 8
  %63 = load i32, i32* %10, align 4
  %64 = call i32 @setup_direct_dde(%struct.data_descriptor_entry* %61, i64 %62, i32 %63)
  store i32 %64, i32* %14, align 4
  %65 = load i32, i32* %14, align 4
  %66 = load i32, i32* %10, align 4
  %67 = icmp ult i32 %65, %66
  %68 = zext i1 %67 to i32
  %69 = call i32 @WARN_ON(i32 %68)
  store i32 0, i32* %6, align 4
  br label %126

70:                                               ; preds = %55
  store i32 0, i32* %13, align 4
  br label %71

71:                                               ; preds = %97, %70
  %72 = load i32, i32* %13, align 4
  %73 = load i32, i32* @DDL_LEN_MAX, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %78

75:                                               ; preds = %71
  %76 = load i32, i32* %10, align 4
  %77 = icmp ugt i32 %76, 0
  br label %78

78:                                               ; preds = %75, %71
  %79 = phi i1 [ false, %71 ], [ %77, %75 ]
  br i1 %79, label %80, label %100

80:                                               ; preds = %78
  %81 = load %struct.data_descriptor_entry*, %struct.data_descriptor_entry** %8, align 8
  %82 = load i32, i32* %13, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.data_descriptor_entry, %struct.data_descriptor_entry* %81, i64 %83
  %85 = load i64, i64* %12, align 8
  %86 = load i32, i32* %10, align 4
  %87 = call i32 @setup_direct_dde(%struct.data_descriptor_entry* %84, i64 %85, i32 %86)
  store i32 %87, i32* %14, align 4
  %88 = load i32, i32* %14, align 4
  %89 = load i8*, i8** %9, align 8
  %90 = sext i32 %88 to i64
  %91 = getelementptr inbounds i8, i8* %89, i64 %90
  store i8* %91, i8** %9, align 8
  %92 = load i32, i32* %14, align 4
  %93 = load i32, i32* %10, align 4
  %94 = sub i32 %93, %92
  store i32 %94, i32* %10, align 4
  %95 = load i8*, i8** %9, align 8
  %96 = call i64 @nx842_get_pa(i8* %95)
  store i64 %96, i64* %12, align 8
  br label %97

97:                                               ; preds = %80
  %98 = load i32, i32* %13, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %13, align 4
  br label %71

100:                                              ; preds = %78
  %101 = load i32, i32* %10, align 4
  %102 = icmp ugt i32 %101, 0
  br i1 %102, label %103, label %120

103:                                              ; preds = %100
  %104 = load i32, i32* %15, align 4
  %105 = load i32, i32* %11, align 4
  %106 = icmp ne i32 %105, 0
  %107 = zext i1 %106 to i64
  %108 = select i1 %106, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0)
  %109 = load i32, i32* %10, align 4
  %110 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0), i32 %104, i8* %108, i32 %109)
  %111 = load i32, i32* %11, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %103
  %114 = load i32, i32* @EMSGSIZE, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %6, align 4
  br label %126

116:                                              ; preds = %103
  %117 = load i32, i32* %10, align 4
  %118 = load i32, i32* %15, align 4
  %119 = sub i32 %118, %117
  store i32 %119, i32* %15, align 4
  br label %120

120:                                              ; preds = %116, %100
  %121 = load %struct.data_descriptor_entry*, %struct.data_descriptor_entry** %7, align 8
  %122 = load %struct.data_descriptor_entry*, %struct.data_descriptor_entry** %8, align 8
  %123 = load i32, i32* %13, align 4
  %124 = load i32, i32* %15, align 4
  %125 = call i32 @setup_indirect_dde(%struct.data_descriptor_entry* %121, %struct.data_descriptor_entry* %122, i32 %123, i32 %124)
  store i32 0, i32* %6, align 4
  br label %126

126:                                              ; preds = %120, %113, %60, %48, %23
  %127 = load i32, i32* %6, align 4
  ret i32 %127
}

declare dso_local i64 @nx842_get_pa(i8*) #1

declare dso_local i32 @IS_ALIGNED(i64, i32) #1

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local i32 @round_down(i32, i32) #1

declare dso_local i32 @LEN_ON_PAGE(i64) #1

declare dso_local i32 @setup_direct_dde(%struct.data_descriptor_entry*, i64, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @setup_indirect_dde(%struct.data_descriptor_entry*, %struct.data_descriptor_entry*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
