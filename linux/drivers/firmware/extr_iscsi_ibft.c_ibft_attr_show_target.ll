; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/extr_iscsi_ibft.c_ibft_attr_show_target.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/extr_iscsi_ibft.c_ibft_attr_show_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibft_kobject = type { i8*, %struct.ibft_tgt* }
%struct.ibft_tgt = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%x\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8*)* @ibft_attr_show_target to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ibft_attr_show_target(i8* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.ibft_kobject*, align 8
  %9 = alloca %struct.ibft_tgt*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = bitcast i8* %13 to %struct.ibft_kobject*
  store %struct.ibft_kobject* %14, %struct.ibft_kobject** %8, align 8
  %15 = load %struct.ibft_kobject*, %struct.ibft_kobject** %8, align 8
  %16 = getelementptr inbounds %struct.ibft_kobject, %struct.ibft_kobject* %15, i32 0, i32 1
  %17 = load %struct.ibft_tgt*, %struct.ibft_tgt** %16, align 8
  store %struct.ibft_tgt* %17, %struct.ibft_tgt** %9, align 8
  %18 = load %struct.ibft_kobject*, %struct.ibft_kobject** %8, align 8
  %19 = getelementptr inbounds %struct.ibft_kobject, %struct.ibft_kobject* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  store i8* %20, i8** %10, align 8
  %21 = load i8*, i8** %7, align 8
  store i8* %21, i8** %11, align 8
  %22 = load %struct.ibft_tgt*, %struct.ibft_tgt** %9, align 8
  %23 = icmp ne %struct.ibft_tgt* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %192

25:                                               ; preds = %3
  %26 = load i32, i32* %6, align 4
  switch i32 %26, label %184 [
    i32 135, label %27
    i32 136, label %37
    i32 134, label %47
    i32 130, label %56
    i32 133, label %65
    i32 131, label %91
    i32 137, label %100
    i32 132, label %109
    i32 139, label %124
    i32 138, label %139
    i32 129, label %154
    i32 128, label %169
  ]

27:                                               ; preds = %25
  %28 = load i8*, i8** %11, align 8
  %29 = load %struct.ibft_tgt*, %struct.ibft_tgt** %9, align 8
  %30 = getelementptr inbounds %struct.ibft_tgt, %struct.ibft_tgt* %29, i32 0, i32 15
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 (i8*, i8*, ...) @sprintf(i8* %28, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = load i8*, i8** %11, align 8
  %35 = sext i32 %33 to i64
  %36 = getelementptr inbounds i8, i8* %34, i64 %35
  store i8* %36, i8** %11, align 8
  br label %185

37:                                               ; preds = %25
  %38 = load i8*, i8** %11, align 8
  %39 = load %struct.ibft_tgt*, %struct.ibft_tgt** %9, align 8
  %40 = getelementptr inbounds %struct.ibft_tgt, %struct.ibft_tgt* %39, i32 0, i32 15
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 (i8*, i8*, ...) @sprintf(i8* %38, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %42)
  %44 = load i8*, i8** %11, align 8
  %45 = sext i32 %43 to i64
  %46 = getelementptr inbounds i8, i8* %44, i64 %45
  store i8* %46, i8** %11, align 8
  br label %185

47:                                               ; preds = %25
  %48 = load i8*, i8** %11, align 8
  %49 = load %struct.ibft_tgt*, %struct.ibft_tgt** %9, align 8
  %50 = getelementptr inbounds %struct.ibft_tgt, %struct.ibft_tgt* %49, i32 0, i32 14
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @sprintf_ipaddr(i8* %48, i32 %51)
  %53 = load i8*, i8** %11, align 8
  %54 = sext i32 %52 to i64
  %55 = getelementptr inbounds i8, i8* %53, i64 %54
  store i8* %55, i8** %11, align 8
  br label %185

56:                                               ; preds = %25
  %57 = load i8*, i8** %11, align 8
  %58 = load %struct.ibft_tgt*, %struct.ibft_tgt** %9, align 8
  %59 = getelementptr inbounds %struct.ibft_tgt, %struct.ibft_tgt* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 (i8*, i8*, ...) @sprintf(i8* %57, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %60)
  %62 = load i8*, i8** %11, align 8
  %63 = sext i32 %61 to i64
  %64 = getelementptr inbounds i8, i8* %62, i64 %63
  store i8* %64, i8** %11, align 8
  br label %185

65:                                               ; preds = %25
  store i32 0, i32* %12, align 4
  br label %66

66:                                               ; preds = %82, %65
  %67 = load i32, i32* %12, align 4
  %68 = icmp slt i32 %67, 8
  br i1 %68, label %69, label %85

69:                                               ; preds = %66
  %70 = load i8*, i8** %11, align 8
  %71 = load %struct.ibft_tgt*, %struct.ibft_tgt** %9, align 8
  %72 = getelementptr inbounds %struct.ibft_tgt, %struct.ibft_tgt* %71, i32 0, i32 13
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %12, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = call i32 (i8*, i8*, ...) @sprintf(i8* %70, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %77)
  %79 = load i8*, i8** %11, align 8
  %80 = sext i32 %78 to i64
  %81 = getelementptr inbounds i8, i8* %79, i64 %80
  store i8* %81, i8** %11, align 8
  br label %82

82:                                               ; preds = %69
  %83 = load i32, i32* %12, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %12, align 4
  br label %66

85:                                               ; preds = %66
  %86 = load i8*, i8** %11, align 8
  %87 = call i32 (i8*, i8*, ...) @sprintf(i8* %86, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %88 = load i8*, i8** %11, align 8
  %89 = sext i32 %87 to i64
  %90 = getelementptr inbounds i8, i8* %88, i64 %89
  store i8* %90, i8** %11, align 8
  br label %185

91:                                               ; preds = %25
  %92 = load i8*, i8** %11, align 8
  %93 = load %struct.ibft_tgt*, %struct.ibft_tgt** %9, align 8
  %94 = getelementptr inbounds %struct.ibft_tgt, %struct.ibft_tgt* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = call i32 (i8*, i8*, ...) @sprintf(i8* %92, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %95)
  %97 = load i8*, i8** %11, align 8
  %98 = sext i32 %96 to i64
  %99 = getelementptr inbounds i8, i8* %97, i64 %98
  store i8* %99, i8** %11, align 8
  br label %185

100:                                              ; preds = %25
  %101 = load i8*, i8** %11, align 8
  %102 = load %struct.ibft_tgt*, %struct.ibft_tgt** %9, align 8
  %103 = getelementptr inbounds %struct.ibft_tgt, %struct.ibft_tgt* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = call i32 (i8*, i8*, ...) @sprintf(i8* %101, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %104)
  %106 = load i8*, i8** %11, align 8
  %107 = sext i32 %105 to i64
  %108 = getelementptr inbounds i8, i8* %106, i64 %107
  store i8* %108, i8** %11, align 8
  br label %185

109:                                              ; preds = %25
  %110 = load i8*, i8** %11, align 8
  %111 = load %struct.ibft_tgt*, %struct.ibft_tgt** %9, align 8
  %112 = getelementptr inbounds %struct.ibft_tgt, %struct.ibft_tgt* %111, i32 0, i32 12
  %113 = load i32, i32* %112, align 8
  %114 = load i8*, i8** %10, align 8
  %115 = load %struct.ibft_tgt*, %struct.ibft_tgt** %9, align 8
  %116 = getelementptr inbounds %struct.ibft_tgt, %struct.ibft_tgt* %115, i32 0, i32 11
  %117 = load i32, i32* %116, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i8, i8* %114, i64 %118
  %120 = call i32 @sprintf_string(i8* %110, i32 %113, i8* %119)
  %121 = load i8*, i8** %11, align 8
  %122 = sext i32 %120 to i64
  %123 = getelementptr inbounds i8, i8* %121, i64 %122
  store i8* %123, i8** %11, align 8
  br label %185

124:                                              ; preds = %25
  %125 = load i8*, i8** %11, align 8
  %126 = load %struct.ibft_tgt*, %struct.ibft_tgt** %9, align 8
  %127 = getelementptr inbounds %struct.ibft_tgt, %struct.ibft_tgt* %126, i32 0, i32 10
  %128 = load i32, i32* %127, align 8
  %129 = load i8*, i8** %10, align 8
  %130 = load %struct.ibft_tgt*, %struct.ibft_tgt** %9, align 8
  %131 = getelementptr inbounds %struct.ibft_tgt, %struct.ibft_tgt* %130, i32 0, i32 9
  %132 = load i32, i32* %131, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i8, i8* %129, i64 %133
  %135 = call i32 @sprintf_string(i8* %125, i32 %128, i8* %134)
  %136 = load i8*, i8** %11, align 8
  %137 = sext i32 %135 to i64
  %138 = getelementptr inbounds i8, i8* %136, i64 %137
  store i8* %138, i8** %11, align 8
  br label %185

139:                                              ; preds = %25
  %140 = load i8*, i8** %11, align 8
  %141 = load %struct.ibft_tgt*, %struct.ibft_tgt** %9, align 8
  %142 = getelementptr inbounds %struct.ibft_tgt, %struct.ibft_tgt* %141, i32 0, i32 8
  %143 = load i32, i32* %142, align 8
  %144 = load i8*, i8** %10, align 8
  %145 = load %struct.ibft_tgt*, %struct.ibft_tgt** %9, align 8
  %146 = getelementptr inbounds %struct.ibft_tgt, %struct.ibft_tgt* %145, i32 0, i32 7
  %147 = load i32, i32* %146, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i8, i8* %144, i64 %148
  %150 = call i32 @sprintf_string(i8* %140, i32 %143, i8* %149)
  %151 = load i8*, i8** %11, align 8
  %152 = sext i32 %150 to i64
  %153 = getelementptr inbounds i8, i8* %151, i64 %152
  store i8* %153, i8** %11, align 8
  br label %185

154:                                              ; preds = %25
  %155 = load i8*, i8** %11, align 8
  %156 = load %struct.ibft_tgt*, %struct.ibft_tgt** %9, align 8
  %157 = getelementptr inbounds %struct.ibft_tgt, %struct.ibft_tgt* %156, i32 0, i32 6
  %158 = load i32, i32* %157, align 8
  %159 = load i8*, i8** %10, align 8
  %160 = load %struct.ibft_tgt*, %struct.ibft_tgt** %9, align 8
  %161 = getelementptr inbounds %struct.ibft_tgt, %struct.ibft_tgt* %160, i32 0, i32 5
  %162 = load i32, i32* %161, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i8, i8* %159, i64 %163
  %165 = call i32 @sprintf_string(i8* %155, i32 %158, i8* %164)
  %166 = load i8*, i8** %11, align 8
  %167 = sext i32 %165 to i64
  %168 = getelementptr inbounds i8, i8* %166, i64 %167
  store i8* %168, i8** %11, align 8
  br label %185

169:                                              ; preds = %25
  %170 = load i8*, i8** %11, align 8
  %171 = load %struct.ibft_tgt*, %struct.ibft_tgt** %9, align 8
  %172 = getelementptr inbounds %struct.ibft_tgt, %struct.ibft_tgt* %171, i32 0, i32 4
  %173 = load i32, i32* %172, align 8
  %174 = load i8*, i8** %10, align 8
  %175 = load %struct.ibft_tgt*, %struct.ibft_tgt** %9, align 8
  %176 = getelementptr inbounds %struct.ibft_tgt, %struct.ibft_tgt* %175, i32 0, i32 3
  %177 = load i32, i32* %176, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i8, i8* %174, i64 %178
  %180 = call i32 @sprintf_string(i8* %170, i32 %173, i8* %179)
  %181 = load i8*, i8** %11, align 8
  %182 = sext i32 %180 to i64
  %183 = getelementptr inbounds i8, i8* %181, i64 %182
  store i8* %183, i8** %11, align 8
  br label %185

184:                                              ; preds = %25
  br label %185

185:                                              ; preds = %184, %169, %154, %139, %124, %109, %100, %91, %85, %56, %47, %37, %27
  %186 = load i8*, i8** %11, align 8
  %187 = load i8*, i8** %7, align 8
  %188 = ptrtoint i8* %186 to i64
  %189 = ptrtoint i8* %187 to i64
  %190 = sub i64 %188, %189
  %191 = trunc i64 %190 to i32
  store i32 %191, i32* %4, align 4
  br label %192

192:                                              ; preds = %185, %24
  %193 = load i32, i32* %4, align 4
  ret i32 %193
}

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

declare dso_local i32 @sprintf_ipaddr(i8*, i32) #1

declare dso_local i32 @sprintf_string(i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
