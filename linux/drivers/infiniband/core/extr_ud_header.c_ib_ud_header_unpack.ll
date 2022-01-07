; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_ud_header.c_ib_ud_header_unpack.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_ud_header.c_ib_ud_header_unpack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_ud_header = type { i32, i32, i32, %struct.TYPE_2__, %struct.TYPE_2__, %struct.TYPE_2__, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32, i32, i32, i32, i64 }

@lrh_table = common dso_local global i32 0, align 4
@IB_LRH_BYTES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Invalid LRH.link_version %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@grh_table = common dso_local global i32 0, align 4
@IB_GRH_BYTES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Invalid GRH.ip_version %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"Invalid GRH.next_header 0x%02x\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"Invalid LRH.link_next_header %d\0A\00", align 1
@bth_table = common dso_local global i32 0, align 4
@IB_BTH_BYTES = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"Invalid BTH.opcode 0x%02x\0A\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"Invalid BTH.transport_header_version %d\0A\00", align 1
@deth_table = common dso_local global i32 0, align 4
@IB_DETH_BYTES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ib_ud_header_unpack(i8* %0, %struct.ib_ud_header* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ib_ud_header*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.ib_ud_header* %1, %struct.ib_ud_header** %5, align 8
  %6 = load i32, i32* @lrh_table, align 4
  %7 = load i32, i32* @lrh_table, align 4
  %8 = call i32 @ARRAY_SIZE(i32 %7)
  %9 = load i8*, i8** %4, align 8
  %10 = load %struct.ib_ud_header*, %struct.ib_ud_header** %5, align 8
  %11 = getelementptr inbounds %struct.ib_ud_header, %struct.ib_ud_header* %10, i32 0, i32 5
  %12 = call i32 @ib_unpack(i32 %6, i32 %8, i8* %9, %struct.TYPE_2__* %11)
  %13 = load i32, i32* @IB_LRH_BYTES, align 4
  %14 = load i8*, i8** %4, align 8
  %15 = sext i32 %13 to i64
  %16 = getelementptr i8, i8* %14, i64 %15
  store i8* %16, i8** %4, align 8
  %17 = load %struct.ib_ud_header*, %struct.ib_ud_header** %5, align 8
  %18 = getelementptr inbounds %struct.ib_ud_header, %struct.ib_ud_header* %17, i32 0, i32 5
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %2
  %23 = load %struct.ib_ud_header*, %struct.ib_ud_header** %5, align 8
  %24 = getelementptr inbounds %struct.ib_ud_header, %struct.ib_ud_header* %23, i32 0, i32 5
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = trunc i64 %26 to i32
  %28 = call i32 @pr_warn(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %156

31:                                               ; preds = %2
  %32 = load %struct.ib_ud_header*, %struct.ib_ud_header** %5, align 8
  %33 = getelementptr inbounds %struct.ib_ud_header, %struct.ib_ud_header* %32, i32 0, i32 5
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  switch i32 %35, label %81 [
    i32 130, label %36
    i32 131, label %39
  ]

36:                                               ; preds = %31
  %37 = load %struct.ib_ud_header*, %struct.ib_ud_header** %5, align 8
  %38 = getelementptr inbounds %struct.ib_ud_header, %struct.ib_ud_header* %37, i32 0, i32 0
  store i32 0, i32* %38, align 8
  br label %89

39:                                               ; preds = %31
  %40 = load %struct.ib_ud_header*, %struct.ib_ud_header** %5, align 8
  %41 = getelementptr inbounds %struct.ib_ud_header, %struct.ib_ud_header* %40, i32 0, i32 0
  store i32 1, i32* %41, align 8
  %42 = load i32, i32* @grh_table, align 4
  %43 = load i32, i32* @grh_table, align 4
  %44 = call i32 @ARRAY_SIZE(i32 %43)
  %45 = load i8*, i8** %4, align 8
  %46 = load %struct.ib_ud_header*, %struct.ib_ud_header** %5, align 8
  %47 = getelementptr inbounds %struct.ib_ud_header, %struct.ib_ud_header* %46, i32 0, i32 6
  %48 = call i32 @ib_unpack(i32 %42, i32 %44, i8* %45, %struct.TYPE_2__* %47)
  %49 = load i32, i32* @IB_GRH_BYTES, align 4
  %50 = load i8*, i8** %4, align 8
  %51 = sext i32 %49 to i64
  %52 = getelementptr i8, i8* %50, i64 %51
  store i8* %52, i8** %4, align 8
  %53 = load %struct.ib_ud_header*, %struct.ib_ud_header** %5, align 8
  %54 = getelementptr inbounds %struct.ib_ud_header, %struct.ib_ud_header* %53, i32 0, i32 6
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 6
  br i1 %57, label %58, label %66

58:                                               ; preds = %39
  %59 = load %struct.ib_ud_header*, %struct.ib_ud_header** %5, align 8
  %60 = getelementptr inbounds %struct.ib_ud_header, %struct.ib_ud_header* %59, i32 0, i32 6
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @pr_warn(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %62)
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %3, align 4
  br label %156

66:                                               ; preds = %39
  %67 = load %struct.ib_ud_header*, %struct.ib_ud_header** %5, align 8
  %68 = getelementptr inbounds %struct.ib_ud_header, %struct.ib_ud_header* %67, i32 0, i32 6
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 8
  %71 = icmp ne i32 %70, 27
  br i1 %71, label %72, label %80

72:                                               ; preds = %66
  %73 = load %struct.ib_ud_header*, %struct.ib_ud_header** %5, align 8
  %74 = getelementptr inbounds %struct.ib_ud_header, %struct.ib_ud_header* %73, i32 0, i32 6
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @pr_warn(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %76)
  %78 = load i32, i32* @EINVAL, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %3, align 4
  br label %156

80:                                               ; preds = %66
  br label %89

81:                                               ; preds = %31
  %82 = load %struct.ib_ud_header*, %struct.ib_ud_header** %5, align 8
  %83 = getelementptr inbounds %struct.ib_ud_header, %struct.ib_ud_header* %82, i32 0, i32 5
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @pr_warn(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %85)
  %87 = load i32, i32* @EINVAL, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %3, align 4
  br label %156

89:                                               ; preds = %80, %36
  %90 = load i32, i32* @bth_table, align 4
  %91 = load i32, i32* @bth_table, align 4
  %92 = call i32 @ARRAY_SIZE(i32 %91)
  %93 = load i8*, i8** %4, align 8
  %94 = load %struct.ib_ud_header*, %struct.ib_ud_header** %5, align 8
  %95 = getelementptr inbounds %struct.ib_ud_header, %struct.ib_ud_header* %94, i32 0, i32 4
  %96 = call i32 @ib_unpack(i32 %90, i32 %92, i8* %93, %struct.TYPE_2__* %95)
  %97 = load i32, i32* @IB_BTH_BYTES, align 4
  %98 = load i8*, i8** %4, align 8
  %99 = sext i32 %97 to i64
  %100 = getelementptr i8, i8* %98, i64 %99
  store i8* %100, i8** %4, align 8
  %101 = load %struct.ib_ud_header*, %struct.ib_ud_header** %5, align 8
  %102 = getelementptr inbounds %struct.ib_ud_header, %struct.ib_ud_header* %101, i32 0, i32 4
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 4
  %104 = load i32, i32* %103, align 4
  switch i32 %104, label %111 [
    i32 129, label %105
    i32 128, label %108
  ]

105:                                              ; preds = %89
  %106 = load %struct.ib_ud_header*, %struct.ib_ud_header** %5, align 8
  %107 = getelementptr inbounds %struct.ib_ud_header, %struct.ib_ud_header* %106, i32 0, i32 1
  store i32 0, i32* %107, align 4
  br label %119

108:                                              ; preds = %89
  %109 = load %struct.ib_ud_header*, %struct.ib_ud_header** %5, align 8
  %110 = getelementptr inbounds %struct.ib_ud_header, %struct.ib_ud_header* %109, i32 0, i32 1
  store i32 1, i32* %110, align 4
  br label %119

111:                                              ; preds = %89
  %112 = load %struct.ib_ud_header*, %struct.ib_ud_header** %5, align 8
  %113 = getelementptr inbounds %struct.ib_ud_header, %struct.ib_ud_header* %112, i32 0, i32 4
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 4
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @pr_warn(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 %115)
  %117 = load i32, i32* @EINVAL, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %3, align 4
  br label %156

119:                                              ; preds = %108, %105
  %120 = load %struct.ib_ud_header*, %struct.ib_ud_header** %5, align 8
  %121 = getelementptr inbounds %struct.ib_ud_header, %struct.ib_ud_header* %120, i32 0, i32 4
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 5
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %134

125:                                              ; preds = %119
  %126 = load %struct.ib_ud_header*, %struct.ib_ud_header** %5, align 8
  %127 = getelementptr inbounds %struct.ib_ud_header, %struct.ib_ud_header* %126, i32 0, i32 4
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 5
  %129 = load i64, i64* %128, align 8
  %130 = trunc i64 %129 to i32
  %131 = call i32 @pr_warn(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0), i32 %130)
  %132 = load i32, i32* @EINVAL, align 4
  %133 = sub nsw i32 0, %132
  store i32 %133, i32* %3, align 4
  br label %156

134:                                              ; preds = %119
  %135 = load i32, i32* @deth_table, align 4
  %136 = load i32, i32* @deth_table, align 4
  %137 = call i32 @ARRAY_SIZE(i32 %136)
  %138 = load i8*, i8** %4, align 8
  %139 = load %struct.ib_ud_header*, %struct.ib_ud_header** %5, align 8
  %140 = getelementptr inbounds %struct.ib_ud_header, %struct.ib_ud_header* %139, i32 0, i32 3
  %141 = call i32 @ib_unpack(i32 %135, i32 %137, i8* %138, %struct.TYPE_2__* %140)
  %142 = load i32, i32* @IB_DETH_BYTES, align 4
  %143 = load i8*, i8** %4, align 8
  %144 = sext i32 %142 to i64
  %145 = getelementptr i8, i8* %143, i64 %144
  store i8* %145, i8** %4, align 8
  %146 = load %struct.ib_ud_header*, %struct.ib_ud_header** %5, align 8
  %147 = getelementptr inbounds %struct.ib_ud_header, %struct.ib_ud_header* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %155

150:                                              ; preds = %134
  %151 = load %struct.ib_ud_header*, %struct.ib_ud_header** %5, align 8
  %152 = getelementptr inbounds %struct.ib_ud_header, %struct.ib_ud_header* %151, i32 0, i32 2
  %153 = load i8*, i8** %4, align 8
  %154 = call i32 @memcpy(i32* %152, i8* %153, i32 4)
  br label %155

155:                                              ; preds = %150, %134
  store i32 0, i32* %3, align 4
  br label %156

156:                                              ; preds = %155, %125, %111, %81, %72, %58, %22
  %157 = load i32, i32* %3, align 4
  ret i32 %157
}

declare dso_local i32 @ib_unpack(i32, i32, i8*, %struct.TYPE_2__*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @pr_warn(i8*, i32) #1

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
