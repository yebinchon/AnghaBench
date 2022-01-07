; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_caampkc.c_caam_rsa_set_priv_key_form.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_caampkc.c_caam_rsa_set_priv_key_form.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.caam_rsa_ctx = type { %struct.caam_rsa_key }
%struct.caam_rsa_key = type { i64, i64, i8*, i8*, i8*, i8*, i8*, i8*, i32, i8* }
%struct.rsa_key = type { i64, i64, i32, i32, i32, i32, i32, i32, i32, i32 }

@GFP_DMA = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@FORM2 = common dso_local global i32 0, align 4
@FORM3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.caam_rsa_ctx*, %struct.rsa_key*)* @caam_rsa_set_priv_key_form to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @caam_rsa_set_priv_key_form(%struct.caam_rsa_ctx* %0, %struct.rsa_key* %1) #0 {
  %3 = alloca %struct.caam_rsa_ctx*, align 8
  %4 = alloca %struct.rsa_key*, align 8
  %5 = alloca %struct.caam_rsa_key*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.caam_rsa_ctx* %0, %struct.caam_rsa_ctx** %3, align 8
  store %struct.rsa_key* %1, %struct.rsa_key** %4, align 8
  %8 = load %struct.caam_rsa_ctx*, %struct.caam_rsa_ctx** %3, align 8
  %9 = getelementptr inbounds %struct.caam_rsa_ctx, %struct.caam_rsa_ctx* %8, i32 0, i32 0
  store %struct.caam_rsa_key* %9, %struct.caam_rsa_key** %5, align 8
  %10 = load %struct.rsa_key*, %struct.rsa_key** %4, align 8
  %11 = getelementptr inbounds %struct.rsa_key, %struct.rsa_key* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %6, align 8
  %13 = load %struct.rsa_key*, %struct.rsa_key** %4, align 8
  %14 = getelementptr inbounds %struct.rsa_key, %struct.rsa_key* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %7, align 8
  %16 = load %struct.rsa_key*, %struct.rsa_key** %4, align 8
  %17 = getelementptr inbounds %struct.rsa_key, %struct.rsa_key* %16, i32 0, i32 9
  %18 = load i32, i32* %17, align 4
  %19 = call i8* @caam_read_raw_data(i32 %18, i64* %6)
  %20 = load %struct.caam_rsa_key*, %struct.caam_rsa_key** %5, align 8
  %21 = getelementptr inbounds %struct.caam_rsa_key, %struct.caam_rsa_key* %20, i32 0, i32 2
  store i8* %19, i8** %21, align 8
  %22 = load %struct.caam_rsa_key*, %struct.caam_rsa_key** %5, align 8
  %23 = getelementptr inbounds %struct.caam_rsa_key, %struct.caam_rsa_key* %22, i32 0, i32 2
  %24 = load i8*, i8** %23, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %2
  br label %160

27:                                               ; preds = %2
  %28 = load i64, i64* %6, align 8
  %29 = load %struct.caam_rsa_key*, %struct.caam_rsa_key** %5, align 8
  %30 = getelementptr inbounds %struct.caam_rsa_key, %struct.caam_rsa_key* %29, i32 0, i32 0
  store i64 %28, i64* %30, align 8
  %31 = load %struct.rsa_key*, %struct.rsa_key** %4, align 8
  %32 = getelementptr inbounds %struct.rsa_key, %struct.rsa_key* %31, i32 0, i32 8
  %33 = load i32, i32* %32, align 8
  %34 = call i8* @caam_read_raw_data(i32 %33, i64* %7)
  %35 = load %struct.caam_rsa_key*, %struct.caam_rsa_key** %5, align 8
  %36 = getelementptr inbounds %struct.caam_rsa_key, %struct.caam_rsa_key* %35, i32 0, i32 3
  store i8* %34, i8** %36, align 8
  %37 = load %struct.caam_rsa_key*, %struct.caam_rsa_key** %5, align 8
  %38 = getelementptr inbounds %struct.caam_rsa_key, %struct.caam_rsa_key* %37, i32 0, i32 3
  %39 = load i8*, i8** %38, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %27
  br label %155

42:                                               ; preds = %27
  %43 = load i64, i64* %7, align 8
  %44 = load %struct.caam_rsa_key*, %struct.caam_rsa_key** %5, align 8
  %45 = getelementptr inbounds %struct.caam_rsa_key, %struct.caam_rsa_key* %44, i32 0, i32 1
  store i64 %43, i64* %45, align 8
  %46 = load %struct.rsa_key*, %struct.rsa_key** %4, align 8
  %47 = getelementptr inbounds %struct.rsa_key, %struct.rsa_key* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i32, i32* @GFP_DMA, align 4
  %50 = load i32, i32* @GFP_KERNEL, align 4
  %51 = or i32 %49, %50
  %52 = call i8* @kzalloc(i64 %48, i32 %51)
  %53 = load %struct.caam_rsa_key*, %struct.caam_rsa_key** %5, align 8
  %54 = getelementptr inbounds %struct.caam_rsa_key, %struct.caam_rsa_key* %53, i32 0, i32 4
  store i8* %52, i8** %54, align 8
  %55 = load %struct.caam_rsa_key*, %struct.caam_rsa_key** %5, align 8
  %56 = getelementptr inbounds %struct.caam_rsa_key, %struct.caam_rsa_key* %55, i32 0, i32 4
  %57 = load i8*, i8** %56, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %60, label %59

59:                                               ; preds = %42
  br label %150

60:                                               ; preds = %42
  %61 = load %struct.rsa_key*, %struct.rsa_key** %4, align 8
  %62 = getelementptr inbounds %struct.rsa_key, %struct.rsa_key* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load i32, i32* @GFP_DMA, align 4
  %65 = load i32, i32* @GFP_KERNEL, align 4
  %66 = or i32 %64, %65
  %67 = call i8* @kzalloc(i64 %63, i32 %66)
  %68 = load %struct.caam_rsa_key*, %struct.caam_rsa_key** %5, align 8
  %69 = getelementptr inbounds %struct.caam_rsa_key, %struct.caam_rsa_key* %68, i32 0, i32 5
  store i8* %67, i8** %69, align 8
  %70 = load %struct.caam_rsa_key*, %struct.caam_rsa_key** %5, align 8
  %71 = getelementptr inbounds %struct.caam_rsa_key, %struct.caam_rsa_key* %70, i32 0, i32 5
  %72 = load i8*, i8** %71, align 8
  %73 = icmp ne i8* %72, null
  br i1 %73, label %75, label %74

74:                                               ; preds = %60
  br label %145

75:                                               ; preds = %60
  %76 = load i32, i32* @FORM2, align 4
  %77 = load %struct.caam_rsa_key*, %struct.caam_rsa_key** %5, align 8
  %78 = getelementptr inbounds %struct.caam_rsa_key, %struct.caam_rsa_key* %77, i32 0, i32 8
  store i32 %76, i32* %78, align 8
  %79 = load %struct.rsa_key*, %struct.rsa_key** %4, align 8
  %80 = getelementptr inbounds %struct.rsa_key, %struct.rsa_key* %79, i32 0, i32 7
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.rsa_key*, %struct.rsa_key** %4, align 8
  %83 = getelementptr inbounds %struct.rsa_key, %struct.rsa_key* %82, i32 0, i32 6
  %84 = load i32, i32* %83, align 8
  %85 = load i64, i64* %6, align 8
  %86 = call i8* @caam_read_rsa_crt(i32 %81, i32 %84, i64 %85)
  %87 = load %struct.caam_rsa_key*, %struct.caam_rsa_key** %5, align 8
  %88 = getelementptr inbounds %struct.caam_rsa_key, %struct.caam_rsa_key* %87, i32 0, i32 6
  store i8* %86, i8** %88, align 8
  %89 = load %struct.caam_rsa_key*, %struct.caam_rsa_key** %5, align 8
  %90 = getelementptr inbounds %struct.caam_rsa_key, %struct.caam_rsa_key* %89, i32 0, i32 6
  %91 = load i8*, i8** %90, align 8
  %92 = icmp ne i8* %91, null
  br i1 %92, label %94, label %93

93:                                               ; preds = %75
  br label %140

94:                                               ; preds = %75
  %95 = load %struct.rsa_key*, %struct.rsa_key** %4, align 8
  %96 = getelementptr inbounds %struct.rsa_key, %struct.rsa_key* %95, i32 0, i32 5
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.rsa_key*, %struct.rsa_key** %4, align 8
  %99 = getelementptr inbounds %struct.rsa_key, %struct.rsa_key* %98, i32 0, i32 4
  %100 = load i32, i32* %99, align 8
  %101 = load i64, i64* %7, align 8
  %102 = call i8* @caam_read_rsa_crt(i32 %97, i32 %100, i64 %101)
  %103 = load %struct.caam_rsa_key*, %struct.caam_rsa_key** %5, align 8
  %104 = getelementptr inbounds %struct.caam_rsa_key, %struct.caam_rsa_key* %103, i32 0, i32 7
  store i8* %102, i8** %104, align 8
  %105 = load %struct.caam_rsa_key*, %struct.caam_rsa_key** %5, align 8
  %106 = getelementptr inbounds %struct.caam_rsa_key, %struct.caam_rsa_key* %105, i32 0, i32 7
  %107 = load i8*, i8** %106, align 8
  %108 = icmp ne i8* %107, null
  br i1 %108, label %110, label %109

109:                                              ; preds = %94
  br label %135

110:                                              ; preds = %94
  %111 = load %struct.rsa_key*, %struct.rsa_key** %4, align 8
  %112 = getelementptr inbounds %struct.rsa_key, %struct.rsa_key* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.rsa_key*, %struct.rsa_key** %4, align 8
  %115 = getelementptr inbounds %struct.rsa_key, %struct.rsa_key* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = load i64, i64* %7, align 8
  %118 = call i8* @caam_read_rsa_crt(i32 %113, i32 %116, i64 %117)
  %119 = load %struct.caam_rsa_key*, %struct.caam_rsa_key** %5, align 8
  %120 = getelementptr inbounds %struct.caam_rsa_key, %struct.caam_rsa_key* %119, i32 0, i32 9
  store i8* %118, i8** %120, align 8
  %121 = load %struct.caam_rsa_key*, %struct.caam_rsa_key** %5, align 8
  %122 = getelementptr inbounds %struct.caam_rsa_key, %struct.caam_rsa_key* %121, i32 0, i32 9
  %123 = load i8*, i8** %122, align 8
  %124 = icmp ne i8* %123, null
  br i1 %124, label %126, label %125

125:                                              ; preds = %110
  br label %130

126:                                              ; preds = %110
  %127 = load i32, i32* @FORM3, align 4
  %128 = load %struct.caam_rsa_key*, %struct.caam_rsa_key** %5, align 8
  %129 = getelementptr inbounds %struct.caam_rsa_key, %struct.caam_rsa_key* %128, i32 0, i32 8
  store i32 %127, i32* %129, align 8
  br label %160

130:                                              ; preds = %125
  %131 = load %struct.caam_rsa_key*, %struct.caam_rsa_key** %5, align 8
  %132 = getelementptr inbounds %struct.caam_rsa_key, %struct.caam_rsa_key* %131, i32 0, i32 7
  %133 = load i8*, i8** %132, align 8
  %134 = call i32 @kzfree(i8* %133)
  br label %135

135:                                              ; preds = %130, %109
  %136 = load %struct.caam_rsa_key*, %struct.caam_rsa_key** %5, align 8
  %137 = getelementptr inbounds %struct.caam_rsa_key, %struct.caam_rsa_key* %136, i32 0, i32 6
  %138 = load i8*, i8** %137, align 8
  %139 = call i32 @kzfree(i8* %138)
  br label %140

140:                                              ; preds = %135, %93
  %141 = load %struct.caam_rsa_key*, %struct.caam_rsa_key** %5, align 8
  %142 = getelementptr inbounds %struct.caam_rsa_key, %struct.caam_rsa_key* %141, i32 0, i32 5
  %143 = load i8*, i8** %142, align 8
  %144 = call i32 @kzfree(i8* %143)
  br label %145

145:                                              ; preds = %140, %74
  %146 = load %struct.caam_rsa_key*, %struct.caam_rsa_key** %5, align 8
  %147 = getelementptr inbounds %struct.caam_rsa_key, %struct.caam_rsa_key* %146, i32 0, i32 4
  %148 = load i8*, i8** %147, align 8
  %149 = call i32 @kzfree(i8* %148)
  br label %150

150:                                              ; preds = %145, %59
  %151 = load %struct.caam_rsa_key*, %struct.caam_rsa_key** %5, align 8
  %152 = getelementptr inbounds %struct.caam_rsa_key, %struct.caam_rsa_key* %151, i32 0, i32 3
  %153 = load i8*, i8** %152, align 8
  %154 = call i32 @kzfree(i8* %153)
  br label %155

155:                                              ; preds = %150, %41
  %156 = load %struct.caam_rsa_key*, %struct.caam_rsa_key** %5, align 8
  %157 = getelementptr inbounds %struct.caam_rsa_key, %struct.caam_rsa_key* %156, i32 0, i32 2
  %158 = load i8*, i8** %157, align 8
  %159 = call i32 @kzfree(i8* %158)
  br label %160

160:                                              ; preds = %155, %126, %26
  ret void
}

declare dso_local i8* @caam_read_raw_data(i32, i64*) #1

declare dso_local i8* @kzalloc(i64, i32) #1

declare dso_local i8* @caam_read_rsa_crt(i32, i32, i64) #1

declare dso_local i32 @kzfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
