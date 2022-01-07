; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_file_ops.c_init_subctxts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_file_ops.c_init_subctxts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_devdata = type { i32, i32, i32 }
%struct.qib_ctxtdata = type { i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i8* }
%struct.qib_user_info = type { i32, i32, i32 }

@.str = private unnamed_addr constant [141 x i8] c"Mismatched user version (%d.%d) and driver version (%d.%d) while context sharing. Ensure that driver and library are from the same release.\0A\00", align 1
@QIB_USER_SWMAJOR = common dso_local global i32 0, align 4
@QIB_USER_SWMINOR = common dso_local global i32 0, align 4
@QLOGIC_IB_MAX_SUBCTXT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@QIB_CTXT_MASTER_UNINIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qib_devdata*, %struct.qib_ctxtdata*, %struct.qib_user_info*)* @init_subctxts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_subctxts(%struct.qib_devdata* %0, %struct.qib_ctxtdata* %1, %struct.qib_user_info* %2) #0 {
  %4 = alloca %struct.qib_devdata*, align 8
  %5 = alloca %struct.qib_ctxtdata*, align 8
  %6 = alloca %struct.qib_user_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.qib_devdata* %0, %struct.qib_devdata** %4, align 8
  store %struct.qib_ctxtdata* %1, %struct.qib_ctxtdata** %5, align 8
  store %struct.qib_user_info* %2, %struct.qib_user_info** %6, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.qib_user_info*, %struct.qib_user_info** %6, align 8
  %11 = getelementptr inbounds %struct.qib_user_info, %struct.qib_user_info* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ule i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  br label %146

15:                                               ; preds = %3
  %16 = load %struct.qib_user_info*, %struct.qib_user_info** %6, align 8
  %17 = getelementptr inbounds %struct.qib_user_info, %struct.qib_user_info* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %8, align 4
  %19 = load %struct.qib_user_info*, %struct.qib_user_info** %6, align 8
  %20 = getelementptr inbounds %struct.qib_user_info, %struct.qib_user_info* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = ashr i32 %21, 16
  %23 = load %struct.qib_user_info*, %struct.qib_user_info** %6, align 8
  %24 = getelementptr inbounds %struct.qib_user_info, %struct.qib_user_info* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = and i32 %25, 65535
  %27 = call i32 @qib_compatible_subctxts(i32 %22, i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %44, label %29

29:                                               ; preds = %15
  %30 = load %struct.qib_devdata*, %struct.qib_devdata** %4, align 8
  %31 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.qib_user_info*, %struct.qib_user_info** %6, align 8
  %34 = getelementptr inbounds %struct.qib_user_info, %struct.qib_user_info* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = ashr i32 %35, 16
  %37 = load %struct.qib_user_info*, %struct.qib_user_info** %6, align 8
  %38 = getelementptr inbounds %struct.qib_user_info, %struct.qib_user_info* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = and i32 %39, 65535
  %41 = load i32, i32* @QIB_USER_SWMAJOR, align 4
  %42 = load i32, i32* @QIB_USER_SWMINOR, align 4
  %43 = call i32 @qib_devinfo(i32 %32, i8* getelementptr inbounds ([141 x i8], [141 x i8]* @.str, i64 0, i64 0), i32 %36, i32 %40, i32 %41, i32 %42)
  br label %146

44:                                               ; preds = %15
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* @QLOGIC_IB_MAX_SUBCTXT, align 4
  %47 = icmp ugt i32 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %44
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %7, align 4
  br label %146

51:                                               ; preds = %44
  %52 = load i32, i32* @PAGE_SIZE, align 4
  %53 = load i32, i32* %8, align 4
  %54 = mul i32 %52, %53
  %55 = call i8* @vmalloc_user(i32 %54)
  %56 = bitcast i8* %55 to i32*
  %57 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %5, align 8
  %58 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %57, i32 0, i32 5
  store i32* %56, i32** %58, align 8
  %59 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %5, align 8
  %60 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %59, i32 0, i32 5
  %61 = load i32*, i32** %60, align 8
  %62 = icmp ne i32* %61, null
  br i1 %62, label %66, label %63

63:                                               ; preds = %51
  %64 = load i32, i32* @ENOMEM, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %7, align 4
  br label %146

66:                                               ; preds = %51
  %67 = load %struct.qib_devdata*, %struct.qib_devdata** %4, align 8
  %68 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.qib_devdata*, %struct.qib_devdata** %4, align 8
  %71 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = mul nsw i32 %69, %72
  %74 = sext i32 %73 to i64
  %75 = mul i64 %74, 4
  %76 = trunc i64 %75 to i32
  %77 = load i32, i32* @PAGE_SIZE, align 4
  %78 = call i32 @ALIGN(i32 %76, i32 %77)
  %79 = load i32, i32* %8, align 4
  %80 = mul i32 %78, %79
  %81 = zext i32 %80 to i64
  store i64 %81, i64* %9, align 8
  %82 = load i64, i64* %9, align 8
  %83 = trunc i64 %82 to i32
  %84 = call i8* @vmalloc_user(i32 %83)
  %85 = bitcast i8* %84 to i32*
  %86 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %5, align 8
  %87 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %86, i32 0, i32 6
  store i32* %85, i32** %87, align 8
  %88 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %5, align 8
  %89 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %88, i32 0, i32 6
  %90 = load i32*, i32** %89, align 8
  %91 = icmp ne i32* %90, null
  br i1 %91, label %95, label %92

92:                                               ; preds = %66
  %93 = load i32, i32* @ENOMEM, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %7, align 4
  br label %139

95:                                               ; preds = %66
  %96 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %5, align 8
  %97 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %5, align 8
  %100 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = mul i32 %98, %101
  %103 = load i32, i32* %8, align 4
  %104 = mul i32 %102, %103
  %105 = call i8* @vmalloc_user(i32 %104)
  %106 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %5, align 8
  %107 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %106, i32 0, i32 9
  store i8* %105, i8** %107, align 8
  %108 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %5, align 8
  %109 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %108, i32 0, i32 9
  %110 = load i8*, i8** %109, align 8
  %111 = icmp ne i8* %110, null
  br i1 %111, label %115, label %112

112:                                              ; preds = %95
  %113 = load i32, i32* @ENOMEM, align 4
  %114 = sub nsw i32 0, %113
  store i32 %114, i32* %7, align 4
  br label %134

115:                                              ; preds = %95
  %116 = load %struct.qib_user_info*, %struct.qib_user_info** %6, align 8
  %117 = getelementptr inbounds %struct.qib_user_info, %struct.qib_user_info* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %5, align 8
  %120 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %119, i32 0, i32 2
  store i32 %118, i32* %120, align 8
  %121 = load %struct.qib_user_info*, %struct.qib_user_info** %6, align 8
  %122 = getelementptr inbounds %struct.qib_user_info, %struct.qib_user_info* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %5, align 8
  %125 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %124, i32 0, i32 8
  store i32 %123, i32* %125, align 4
  %126 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %5, align 8
  %127 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %126, i32 0, i32 3
  store i32 1, i32* %127, align 4
  %128 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %5, align 8
  %129 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %128, i32 0, i32 4
  store i32 1, i32* %129, align 8
  %130 = load i32, i32* @QIB_CTXT_MASTER_UNINIT, align 4
  %131 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %5, align 8
  %132 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %131, i32 0, i32 7
  %133 = call i32 @set_bit(i32 %130, i32* %132)
  br label %146

134:                                              ; preds = %112
  %135 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %5, align 8
  %136 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %135, i32 0, i32 6
  %137 = load i32*, i32** %136, align 8
  %138 = call i32 @vfree(i32* %137)
  br label %139

139:                                              ; preds = %134, %92
  %140 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %5, align 8
  %141 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %140, i32 0, i32 5
  %142 = load i32*, i32** %141, align 8
  %143 = call i32 @vfree(i32* %142)
  %144 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %5, align 8
  %145 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %144, i32 0, i32 5
  store i32* null, i32** %145, align 8
  br label %146

146:                                              ; preds = %139, %115, %63, %48, %29, %14
  %147 = load i32, i32* %7, align 4
  ret i32 %147
}

declare dso_local i32 @qib_compatible_subctxts(i32, i32) #1

declare dso_local i32 @qib_devinfo(i32, i8*, i32, i32, i32, i32) #1

declare dso_local i8* @vmalloc_user(i32) #1

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @vfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
